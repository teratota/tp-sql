CREATE USER 'test'@'localhost' IDENTIFIED BY 'test';
GRANT USAGE ON *.* TO 'test'@'localhost';
GRANT SELECT  ON `tp-sql`.* TO 'test'@'localhost';
FLUSH PRIVILEGES;