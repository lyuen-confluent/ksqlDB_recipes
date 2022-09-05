-- For the purposes of this recipe when testing by inserting records manually,
--  a short pause between these insert groups is required. This allows
--  the merchant location data to be processed by the merchants_by_geohash
--  table before the user location data is joined in the alerts_raw stream.
-- INSERT INTO MERCHANT_LOCATIONS (id, latitude, longitude, description, geohash) VALUES (1, 22.3347092, 114.1964561, '英記', 'wecpn9gm4796');
INSERT INTO MERCHANT_LOCATIONS (id, latitude, longitude, description, geohash) VALUES (1, 22.3367145, 114.1955173, '海膽仔', 'wecpnd68u3mk');
INSERT INTO MERCHANT_LOCATIONS (id, latitude, longitude, description, geohash) VALUES (2, 22.3346323, 114.1983870, '泰景食堂', 'wecpn9uswrn6');
INSERT INTO MERCHANT_LOCATIONS (id, latitude, longitude, description, geohash) VALUES (3, 22.3383587, 114.2008539, 'Coti the Bistro', 'wecpndwd2gbs');

INSERT INTO USER_LOCATIONS (id, latitude, longitude, geohash) VALUES (1, 22.3347106, 114.1969499, 'wecpn9gtjgcd');
INSERT INTO USER_LOCATIONS (id, latitude, longitude, geohash) VALUES (1, 22.3375791, 114.2009994, 'wecpndqtu4t1');
INSERT INTO USER_LOCATIONS (id, latitude, longitude, geohash) VALUES (2, 22.3360556, 114.1962580, 'wecpnd5hvwt9');
INSERT INTO USER_LOCATIONS (id, latitude, longitude, geohash) VALUES (3, 22.3350946, 114.1945884, 'wecpn9czqg2t');


