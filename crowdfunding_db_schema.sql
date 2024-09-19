
--- drop table if they exist

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory; 
DROP TABLE IF EXISTS category; 
DROP TABLE IF EXISTS campaign;

--- creating the tables

CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR (120) NOT NULL,
	last_name VARCHAR (120) NOT NULL,
	email VARCHAR (120) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR (120) PRIMARY KEY,
	category VARCHAR (120) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR (120) PRIMARY KEY,
	subcategory VARCHAR (120) NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(200) NOT NULL,
    description VARCHAR(200) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(200) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(200) NOT NULL,
    currency VARCHAR(200) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(200) NOT NULL,
    subcategory_id VARCHAR(200) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign