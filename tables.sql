-- create table products(
-- product_id serial primary key,
-- product_name varchar(100),
-- supplier_id int references suppliers(supplier_id),
-- category_id int references categories(category_id),
-- quantity_per_unit varchar(50),
-- unit_price int,
-- units_in_stock int,
-- units_in_order int,
-- reorder_level int,
-- discontinued int
-- )

-- create table suppliers(
-- supplier_id serial primary key,
-- company_name varchar(100),
-- contact_name varchar(100),
-- contact_title varchar(100),
-- address varchar(100),
-- city varchar(50),
-- region varchar(100),
-- postal_code varchar(100),
-- country varchar(100),
-- phone varchar(100),
-- fax varchar(100),
-- homepage varchar(100)
-- )

-- create table orders(
-- order_id serial primary key,
-- customer_id varchar(100),
-- employee_id int,
-- order_date date,
-- required_date date,
-- shipped_date date,
-- ship_via int,
-- freight int,
-- ship_name varchar(100),
-- ship_address varchar(100),
-- ship_city varchar(100),
-- ship_region varchar(100),
-- ship_postal_code varchar(100),
-- ship_country varchar(100)
-- )

-- create table order_details(
-- order_id int references orders(order_id),
-- product_id int references products(product_id),
-- unit_price int,
-- quantity int,
-- dicount int
-- )

-- insert into categories (category_name,description) values
-- ('fish','good fish shippin'),
-- ('gold','gold shipping'),
-- ('salt','transport');
-- select * from categories

-- INSERT INTO suppliers
-- (company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, homepage)
-- VALUES
-- ('Alpha Foods', 'Ali Karimov', 'Manager', 'Main street 10', 'Tashkent', NULL, '100000', 'Uzbekistan', '+998901111111', NULL, 'www.alpha.uz'),

-- ('Beta Trade', 'John Smith', 'Sales Rep', 'Green road 5', 'London', NULL, 'SW1A1AA', 'UK', '+44123456789', NULL, 'www.betatrade.co.uk'),

-- ('Gamma Supply', 'Anna Lee', 'Director', 'Sun ave 22', 'Seoul', NULL, '04524', 'South Korea', '+821012345678', NULL, 'www.gammasupply.kr');

-- insert into products (product_name,supplier_id,category_id,quantity_per_unit,unit_price,units_in_stock,reorder_level,discontinued) values
-- ('Milk', 1, 1, '1 liter', 1.50, 120, 20, 0),

-- ('Bread', 2, 2, '1 loaf', 0.80, 200, 30, 0),

-- ('Cheese', 3, 1, '500 g', 4.20, 60, 15, 0);

-- insert into orders (customer_id,employee_id,order_date,required_date,shipped_date,ship_via,freight,ship_name,ship_address,ship_city,ship_region,ship_postal_code,ship_country)
-- VALUES
-- (1, 1, '2025-01-10', '2025-01-15', '2025-01-12',
--  1, 25.50, 'Alpha Store', 'Main street 10', 'Tashkent',
--  NULL, '100000', 'Uzbekistan'),

-- (2, 2, '2025-02-05', '2025-02-10', '2025-02-07',
--  2, 40.00, 'Beta Market', 'Green road 5', 'London',
--  NULL, 'SW1A1AA', 'UK'),

-- (3, 1, '2025-03-01', '2025-03-06', '2025-03-04',
--  1, 15.75, 'Gamma Shop', 'Sun ave 22', 'Seoul',
--  NULL, '04524', 'South Korea');

-- insert into order_details (order_id,product_id,unit_price,quantity,discount) values
-- (1, 1, 5.50, 10, 0),
-- --
-- (1, 2, 8.00, 5, 0.10),

-- (2, 3, 1.20, 20, 0);

-- alter table order_details add column discount int

select * from order_details
