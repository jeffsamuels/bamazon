DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (

  item_id INTEGER(11) NOT NULL,
 
  product_name VARCHAR(30) NOT NULL,
 
  department_name VARCHAR(30) NOT NULL,
 
  price INTEGER(10),
 
  stock_quantity INTEGER(10)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (101, "Pizza", "Food", 5, 7);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (201, "Slingshot", "Toys", 15, 3);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (301, "Old Sock", "Clothes", 1, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (401, "Ferrari", "Cars", 30, 2);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (501, "Ring of Power", "Jewelry", 7, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (601, "Salmon Burgers", "Food", 6, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (701, "Iron Throne", "Furniture", 6, 2);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (801, "Half-eaten donut", "Food", 1, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (901, "Drone", "Electronics", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (999, "Toothbrush", "Personal Items", 2, 30);