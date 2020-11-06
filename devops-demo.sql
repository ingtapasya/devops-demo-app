CREATE TABLE dbversion (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,version VARCHAR(30) NOT NULL);
INSERT INTO dbversion (version) VALUES ('1.0');
SHOW VARIABLES LIKE 'validate_password%';
SET GLOBAL validate_password_length = 6;
SET GLOBAL validate_password_number_count = 0;
SET GLOBAL validate_password.policy = LOW;
CREATE USER 'devops_user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON devopsdb TO 'devops_user'@'%';
flush PRIVILEGES;
