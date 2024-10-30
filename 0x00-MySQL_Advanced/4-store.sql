-- SQL script that create a trigger that decreases the quntity of 
-- and item after adding a new order.
-- context: Updating multiple tables for one action from your application
-- can generate issue: network disconnection, crash etc
-- use SQL to keep dat in good shape

CREATE TRIGGER decrease_items_quantity AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
