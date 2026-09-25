
-- Database Exploration
--- Explore all objects in database
select * from INFORMATION_SCHEMA.TABLES;

--- Explore all column in table
select TABLE_NAME, COLUMN_NAME, DATA_TYPE from INFORMATION_SCHEMA.COLUMNS;


--Dimention Exploration
select * from customers;
select * from orders;
select * from products;
select * from order_items order by product_id;


--Anamalise ditected
update products set price = round(price * 10, 2);
update products set cost = ROUND(cost * 10, 2)
update products set rating = round(rating, 2)
update order_items set unit_price = ROUND(unit_price * 10 ,2)

--Dimention state, city
select distinct city, state from customers;

--Dimention categories
select distinct category from products;

--explore the scope of data and timespan

--Statistics (Min, Max, Sum, Average, count)
select count(*) as total_customer from customers;
---Total sales sum( quantity * unit_price )
select sum(quantity * unit_price) from order_items;


--Duplicate
select customer_id 
from customers 
group by customer_id 
having count(customer_id) > 1;


