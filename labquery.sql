# 1 
Select northwind.products.product_name, northwind.products.quantity_per_unit FROM northwind.products;
# 2
SELECT northwind.products.product_name FROM northwind.products WHERE discontinued = FALSE;
#3
SELECT northwind.products.product_name FROM northwind.products WHERE discontinued = TRUE;
#4 least
SELECT northwind.products.product_name, list_price FROM northwind.products order by list_price limit 1;
# most
SELECT northwind.products.product_name, list_price FROM northwind.products order by  list_price DESC limit 1;

#5