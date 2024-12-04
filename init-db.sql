CREATE DATABASE IF NOT EXISTS `restpilot-auth-dev`;

ALTER USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON `restpilot-auth-dev`.* TO 'root'@'%';
FLUSH PRIVILEGES;
