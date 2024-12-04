CREATE DATABASE IF NOT EXISTS `restpilot-auth-dev`;
CREATE DATABASE IF NOT EXISTS `restpilot-orders-dev`;

ALTER USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON `restpilot-auth-dev`.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON `restpilot-orders-dev`.* TO 'root'@'%';
FLUSH PRIVILEGES;
