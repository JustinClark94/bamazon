-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect animals_db --
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
  -- Makes an numeric column for item ids--
  id INTEGER(11) AUTO_INCREMENT NOT NULL,

  -- Makes a sting column called "product_name" --
  product_name VARCHAR(30),

  -- Makes a sting column called "department_name" --
  department_name VARCHAR(30),

  -- Makes an numeric column for item price--
  price INTEGER(10),
  
  -- Makes an numeric column for item quantity--
  stock_quantity INTEGER(10),



  -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (id)
);

-- Creates new rows containing data in all named columns --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Accent Chair", "Living Room", 150, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Picture Frame", "Decor", 15, 17);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Oven", "Kitchen", 2000, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Coffee Table", "Living Room", 200, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fake Plant", "decor", 12, 300);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Candle","Decor", 12, 90);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mirrior", "Decor", 57, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Rug", "decor", 75, 3000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Pillow", "Bedroom", 30, 77);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Lamp", "Decor", 57, 65);

-- Updates the row where the column name is peter --


SELECT * FROM products;
