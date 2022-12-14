SET 'auto.offset.reset' = 'earliest';

CREATE TABLE merchant_locations (
  id INT PRIMARY KEY,
  description VARCHAR,
  latitude DECIMAL(10,7),
  longitude DECIMAL(10,7),
  geohash VARCHAR
) WITH (
  KAFKA_TOPIC = 'merchant-locations',
  VALUE_FORMAT = 'JSON',
  PARTITIONS = 1
);

CREATE TABLE merchants_by_geohash
WITH (
  KAFKA_TOPIC = 'merchant-geohash',
  FORMAT = 'JSON',
  PARTITIONS = 1
) AS
SELECT
  SUBSTRING(geohash, 1, 6) AS geohash,
  COLLECT_LIST(id) as id_list
FROM merchant_locations
GROUP BY SUBSTRING(geohash, 1, 6);

CREATE STREAM user_locations (
  id INT,
  latitude DECIMAL(10,7),
  longitude DECIMAL(10,7),
  geohash VARCHAR
) WITH (
  KAFKA_TOPIC = 'user-locations',
  VALUE_FORMAT = 'JSON',
  PARTITIONS = 1
);

CREATE STREAM alerts_raw
WITH (
  KAFKA_TOPIC = 'alerts-raw',
  VALUE_FORMAT = 'JSON',
  PARTITIONS = 1
) AS
SELECT
  user_locations.id as user_id,
  user_locations.latitude AS user_latitude,
  user_locations.longitude AS user_longitude,
  SUBSTRING(user_locations.geohash, 1, 6) AS user_geohash,
  EXPLODE(merchants_by_geohash.id_list) AS merchant_id
FROM user_locations
LEFT JOIN merchants_by_geohash ON SUBSTRING(user_locations.geohash, 1, 6) =
  merchants_by_geohash.geohash
PARTITION BY null;

CREATE STREAM promo_alerts
WITH (
  KAFKA_TOPIC = 'promo-alerts',
  VALUE_FORMAT = 'JSON',
  PARTITIONS = 1
) AS
SELECT
  alerts_raw.user_id,
  alerts_raw.user_geohash,
  merchant_locations.description AS merchant_description,
  CAST(
    GEO_DISTANCE(alerts_raw.user_latitude, alerts_raw.user_longitude,
                 merchant_locations.latitude, merchant_locations.longitude,
        'KM') * 1000 AS INT) as distance_meters,
  STRUCT(lat := CAST(alerts_raw.user_latitude AS DOUBLE), lon := CAST(alerts_raw.user_longitude AS DOUBLE)) AS geopoint
FROM alerts_raw
LEFT JOIN merchant_locations on alerts_raw.merchant_id = merchant_locations.id
WHERE GEO_DISTANCE(
        alerts_raw.user_latitude, alerts_raw.user_longitude,
        merchant_locations.latitude, merchant_locations.longitude, 'KM') < 0.2
PARTITION BY null
EMIT CHANGES;


