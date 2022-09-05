-- CREATE OR REPLACE TABLE promotion_french_poodle
--   AS
--   SELECT
--       user_id,
--       collect_set(product_id) AS products,
--       'chinese_poodle' AS promotion_name
--   FROM purchases
--   WHERE product_id IN ('dog', 'beret')
--   GROUP BY user_id
--   HAVING ARRAY_CONTAINS( collect_set(product_id), 'dog' )
--   AND ARRAY_CONTAINS( collect_set(product_id), 'beret' )
--   EMIT changes;