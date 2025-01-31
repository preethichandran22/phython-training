select *from customers
where first_name like'ba%' or first_name like'%di';

select *from customers
 where not first_name='b' or last_name='b';

select *from customers
where first_name in('babara','elka');

select *from sql_store.customers
where first_name like 'e_k_'
