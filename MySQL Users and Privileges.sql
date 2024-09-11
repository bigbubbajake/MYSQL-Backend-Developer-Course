Use candy_store;

CREATE USER 'jake'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT, INSERT, UPDATE ON candy_store.* TO 'jake'@'localhost';

SHOW GRANTS FOR 'jake@localhost";

REVOKE INSERT, UPDATE ON candy_store.* FROM 'jake'@'localhost';

DROP USER 'jake'@'localhost';
