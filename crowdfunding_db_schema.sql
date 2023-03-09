-- Create Tables

CREATE TABLE category(
category_id  VARCHAR(4) PRIMARY KEY, 
category VARCHAR);


CREATE TABLE subcategory(
subcategory_id VARCHAR PRIMARY KEY,
subcategory VARCHAR);


CREATE TABLE contacts(
contact_id  INT PRIMARY KEY,
first_name VARCHAR,
last_name VARCHAR,
email VARCHAR);


CREATE TABLE Campaign(
cf_id INT PRIMARY KEY,
contact_id INT,
company_name VARCHAR, 
description VARCHAR,
goal MONEY,
pledged MONEY,
outcome  VARCHAR,
backers_count INT,
country VARCHAR(2),
currency VARCHAR(3),
launched_date DATE,
end_date DATE,
category_id VARCHAR(4),
subcategory_id VARCHAR,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));

-- Check Tables

SELECT *
FROM category

SELECT *
FROM subcategory

SELECT *
FROM contacts

SELECT *
FROM campaign