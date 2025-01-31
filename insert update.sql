SELECT * FROM sql_store.order_item_notes;
UPDATE `sql_store`.`order_item_notes` SET `product_id` = '3' WHERE (`note_id` = '1');
INSERT INTO `sql_store`.`order_item_notes` (`note_id`, `order_Id`, `product_id`, `note`) VALUES ('4', '2', '3', 'fourth note'); 
ALTER TABLE `sql_store`.`customers` 
ADD COLUMN `new_points` INT NOT NULL AFTER `points`;
