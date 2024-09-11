CREATE DATABASE candy_store;



USE candy_store;
CREATE TABLE manufacturer(
manufacturer_id INT NOT NULL PRIMARY KEY, --or contraints // manufacturer_id INT CONSTRAINT manpk PRIMARY KEY
manufacturer_name VARCHAR (50)
);

CREATE TABLE candy(
candy_id INT NOT NULL PRIMARY KEY, --or constraints //candy_id INT CONSTRAINT candpk PRIMARY KEY
candy_name VARCHAR (50),
candy_price INT,
FOREIGN KEY (manufacturer_id) REFERENCES manufacturer (id)
);

 




