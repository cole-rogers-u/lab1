# 1 
Select northwind.products.product_name, northwind.products.quantity_per_unit FROM northwind.products;
# 2
	SELECT northwind.products.id, northwind.products.product_name FROM northwind.products WHERE discontinued = FALSE;
#3
SELECT northwind.products.id, northwind.products.product_name FROM northwind.products WHERE discontinued = TRUE;
#4 least
SELECT northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id order by unit_price limit 1;
# most
SELECT northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id order by  unit_price DESC limit 1;

#5
SELECT northwind.products.id, northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id  WHERE unit_price < 20;

#6	
SELECT northwind.products.id, northwind.products.product_name,unit_price FROM northwind.products JOIN northwind.order_details ON product_id  WHERE 15 < unit_price < 25;

#7 
SELECT northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id  WHERE unit_price > (SELECT AVG(northwind.order_details.unit_price) from northwind.order_details);

#8
SELECT northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id ORDER BY  list_price DESC limit 10;


SELECT northwind.products.product_name, unit_price FROM northwind.products JOIN northwind.order_details ON product_id order by  list_price DESC limit 10;

#9
SELECT count(northwind.products.product_name) FROM northwind.products WHERE discontinued = FALSE;
SELECT count(northwind.products.product_name) FROM northwind.products WHERE discontinued = TRUE;

# 10
SELECT northwind.products.product_name, northwind.products.target_level, northwind.products.reorder_level from northwind.products where (reorder_level - target_level) < minimum_reorder_quantity;