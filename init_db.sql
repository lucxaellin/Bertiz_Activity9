ALTER USER 'root'@'localhost' IDENTIFIED BY 'mike';
CREATE DATABASE sk_bombon_barangay_management_system;
GRANT ALL PRIVILEGES ON sk_bombon_barangay_management_system.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
