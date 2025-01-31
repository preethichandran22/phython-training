-- select *from products

-- select *from products
-- where (quantity_in_stock='49' or quantity_in_stock='38'or quantity_in_stock='72');

 select *from products
  where quantity_in_stock in ('38','49','72');