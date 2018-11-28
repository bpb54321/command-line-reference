/* Useful SQL commands */

/* Create new user */
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

/* Grant all privileges on all databases and tables for a user */
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost';

/* Grant all privileges on all tables for a specific database. */
GRANT ALL PRIVILEGES ON database.* TO 'newuser'@'localhost';

/* Reload / refresh database privileges */
FLUSH PRIVILEGES;