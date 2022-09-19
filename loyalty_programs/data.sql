-- Some users.
INSERT INTO users ( user_id, name ) VALUES ( 'u2001', 'kris' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2002', 'dave' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2003', 'yeva' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2004', 'rick' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2005', 'leo' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2006', 'alan' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2007', 'maria' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2008', 'simon' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2009', 'ken' );
INSERT INTO users ( user_id, name ) VALUES ( 'u2010', 'jeff' );

-- Some products.
INSERT INTO products ( product_id, category, price ) VALUES ( 'tea', 'beverages', 2.50 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'coffee', 'beverages', 3.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'dog', 'pets', 250.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'cat', 'pets', 195.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'beret', 'fashion', 35.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'handbag', 'fashion', 50.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'iphone', 'electronics', 200.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'speaker', 'electronics', 100.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'bowl', 'kitchen', 20.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'plates', 'kitchen', 15.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'jenga', 'games', 13.00 );
INSERT INTO products ( product_id, category, price ) VALUES ( 'monopoly', 'games', 24.00 );

----------------------------------------------------
-- Following are not required for dashbaord demo
----------------------------------------------------

-- Some purchases.
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'beret' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'cat' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'rick', 'tea' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'dave', 'dog' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'dave', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'beret' );

-- A price increase!
INSERT INTO products ( product_id, category, price ) VALUES ( 'coffee', 'beverages', 3.05 );

-- Some more purchases.
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'rick', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'rick', 'dog' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'rick', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'rick', 'cat' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'coffee' );
INSERT INTO purchases ( user_id, product_id ) VALUES ( 'yeva', 'handbag' );


INSERT INTO purchases ( user_id, product_id ) VALUES ( 'kris', 'dog' );

-- To validate that this recipe is working, run the following query:

SELECT * FROM promotion_loose_leaf;