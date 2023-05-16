use sql_store;

select * from customers
where customer_id = 1
order by first_name;

select * from customers
where customer_id = 1
order by first_name desc;

#adding 10 to the points
select last_name,first_name,points,points+10 from customers;

#Using the Query 2 you created change the points to reads times by 10 and plus 100. Record your results in your word document 
select last_name,first_name,points,((points*10)+100) from customers;

#Change the Query 2 code to create a discount factor so the table now shows a discount header and changing the (point + 10) *100
select last_name,first_name,points,((points*10)+100)as discount_factor from customers;

select * from products;

select product_id,name,quantity_in_stock,unit_price,(unit_price*1.1) as new_price from products;

select * from customers
where birth_date>'1990-01-01' ; 


use sql_inventory;
select * from products;

select max(quantity_in_stock)
from products
where quantity_in_stock ;

select name
FROM products
WHERE unit_price = (SELECT MAX(unit_price) FROM products);

select name
FROM products
WHERE quantity_in_stock = (SELECT MAX(quantity_in_stock) FROM products);

use sql_store;
select * from customers;

select first_name, last_name, address, birth_date
from customers
where birth_date = (select MIN(birth_date) from customers);



