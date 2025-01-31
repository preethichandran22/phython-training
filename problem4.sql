/*select *from customers
where first_name='elka' or first_name='ambur';*/

-- select *from customers
-- where last_name like'my%'; 

 -- select *from customers
 -- where last_name like'%ey' or last_name like'%on'; 
 
 select *from customers 
  where last_name regexp 'b|r|U';
 
