USE Northwind_DW;
# Select Statement 
SELECT `dim_customers`.`last_name`, `quantity`, `unit_price`
FROM `Northwind_DW`.`dim_customers`  LEFT OUTER JOIN `Northwind_DW`.`fact_orders`
on `customer_key` = `customer_id`;