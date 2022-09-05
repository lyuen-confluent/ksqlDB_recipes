DROP STREAM IF EXISTS  next_best_offer_lookup   DELETE TOPIC;  
DROP STREAM IF EXISTS  next_best_offer          DELETE TOPIC;
DROP STREAM IF EXISTS  customer_activity_stream DELETE TOPIC;
DROP TABLE  IF EXISTS  offers                   DELETE TOPIC;
DROP TABLE  IF EXISTS  customers                DELETE TOPIC;