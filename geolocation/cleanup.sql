drop stream IF EXISTS promo_alerts delete topic;
drop stream IF EXISTS alerts_raw delete topic;
drop stream IF EXISTS user_locations delete topic;
drop table IF EXISTS merchants_by_geohash delete topic;
drop table IF EXISTS merchant_locations delete topic;