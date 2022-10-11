DROP DATABASE IF EXISTS marketplace;
CREATE DATABASE marketplace;
USE marketplace;

DROP TABLE IF EXISTS category;

CREATE TABLE category(
	id SERIAL PRIMARY KEY,
	category_name VARCHAR(255) NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	INDEX(category_name),
	is_deleted bit DEFAULT 0
);


DROP TABLE IF EXISTS product;

CREATE TABLE product(
	id SERIAL PRIMARY KEY,
	product_name VARCHAR(35),
	category_id BIGINT UNSIGNED NOT NULL,
	price DECIMAL(6, 2) NOT NULL COMMENT 'цена в рублях',
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	is_deleted bit DEFAULT 0,	
	FOREIGN KEY (category_id) REFERENCES category (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS media;

CREATE TABLE media(
	id SERIAL PRIMARY KEY,    
    product_id BIGINT UNSIGNED NOT NULL,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (product_id),
    FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS city;

CREATE TABLE city (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    created_date DATETIME DEFAULT NOW() NOT NULL,
    is_deleted bit DEFAULT 0
);

DROP TABLE IF EXISTS address;

CREATE TABLE address (
    id SERIAL PRIMARY KEY,
    address VARCHAR(100) NOT NULL,
    city_id BIGINT UNSIGNED NOT NULL,
    created_date DATETIME DEFAULT NOW() NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted bit DEFAULT 0,
    FOREIGN KEY (city_id) REFERENCES city (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS client;

CREATE TABLE client(
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) COMMENT 'Имя',
    lastname VARCHAR(100) COMMENT 'Фамилия',
    email VARCHAR(100) UNIQUE,
    password_hash VARCHAR(100),
    phone BIGINT,
    address_id BIGINT UNSIGNED NOT NULL,
    is_deleted bit DEFAULT 0,
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname),
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (address_id) REFERENCES address (id) ON UPDATE CASCADE ON DELETE CASCADE
);


DROP TABLE IF EXISTS courier;

CREATE TABLE courier(
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) COMMENT 'Имя',
    lastname VARCHAR(100) COMMENT 'Фамилия',
    phone BIGINT,
    salary INT,
    address_id BIGINT UNSIGNED NOT NULL,
    is_deleted bit DEFAULT 0,
    INDEX courier_phone_idx(phone),
    INDEX courier_firstname_lastname_idx(firstname, lastname),
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (address_id) REFERENCES address (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS delivery;

CREATE TABLE delivery(
	id SERIAL PRIMARY KEY,
	address_id BIGINT UNSIGNED NOT NULL,
	delivery_date DATE NOT NULL,
	courier_id BIGINT UNSIGNED NOT NULL, -- REFERENCES courier(id),
	last_update TIMESTAMP,
	created_date TIMESTAMP DEFAULT NOW(),
	is_deleted bit DEFAULT 0,
	FOREIGN KEY (address_id) REFERENCES address (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (courier_id) REFERENCES courier (id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	status ENUM('в обработке', 'в пути', 'доставлено', 'отказ', 'возврат'),	
	summ INT NOT NULL DEFAULT 0 COMMENT 'Сумма платежа, рассчитывается при помощи функции',
	delivery_id BIGINT UNSIGNED NOT NULL,
	client_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	is_deleted bit DEFAULT 0,
	FOREIGN KEY (delivery_id) REFERENCES delivery (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
);
/*
alter table orders add constraint orders_delivery_fkey foreign key
(delivery_id) references delivery(id)
*/

DROP TABLE IF EXISTS order_product_list;

CREATE TABLE order_product_list (
    order_id BIGINT UNSIGNED NOT NULL,
    product_id BIGINT UNSIGNED NOT NULL,    
    amount INT NOT NULL,
    INDEX (order_id),
    INDEX (product_id),
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT order_product_list_amount_check CHECK ((amount > 0)),
    FOREIGN KEY (order_id) REFERENCES orders(id) ON UPDATE RESTRICT ON DELETE CASCADE, 
    FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE RESTRICT ON DELETE CASCADE
);


