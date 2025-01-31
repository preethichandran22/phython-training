use sql_store;
select first_name,birth_date,o.status
from customers c
join orders o
on c.customer_id=o.customer_id;

use sql_store;
select first_name,birth_date as date,o.status,o.order_date
from customers c
join orders o
on c.customer_id=o.customer_id;

select name,quantity_in_stock,p.unit_price as units,oi.unit_price
from sql_inventory.products p
join sql_store.order_items oi
on p.product_id=oi.product_id;

select *
from sql_inventory.products p
join sql_store.order_items oi
join sql_store.orders o
on o.order_id=oi.order_id;

use sql_hr;
select e.employee_id,e.first_name as employees,e.job_title,m.first_name as reports_to
from employees e
join employees m
on e.reports_to=m.employee_id;

-- problem 6
use sql_store;
select oi.order_id,oi.product_id,o.customer_id,c.first_name,p.name as productname,o.order_date,o.shipped_date,o.status
from orders o
join customers c
join order_items oi
join products p
on oi.product_id=p.product_id;


-- outer joints
-- left and right joints
use sql_store;
select *
from customers c
left join orders o 
on c.customer_id=o.order_id;

-- using more tables 
select c.customer_id,c.first_name as customer,c.city,o.order_id,o.status as order_status,oi.quantity
from sql_store.customers c
left join sql_store.orders o
on c.customer_id=o.customer_id
right join sql_store.order_items oi
on oi.order_id=o.order_id;

-- implicit joins
use sql_store;
select * 
from customers c,orders o
where c.customer_id=o.customer_id;

-- using clause
use sql_store;
select * 
from customers
join orders
using(customer_id);


-- natural join
use sql_store;
select * 
from customers c
natural join products;
-- cross join
use sql_store;
select *from customers c
cross join orders o;

