CREATE DATABASE IF NOT EXISTS `restpilot-auth-dev`;
CREATE DATABASE IF NOT EXISTS `restpilot-orders-dev`;
CREATE DATABASE IF NOT EXISTS `restpilot-menu-dev`;

ALTER USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON `restpilot-auth-dev`.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON `restpilot-orders-dev`.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON `restpilot-menu-dev`.* TO 'root'@'%';
FLUSH PRIVILEGES;
