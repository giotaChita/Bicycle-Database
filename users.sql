CREATE USER 'sysadmin'@'localhost' IDENTIFIED BY 'superpass';
GRANT ALL PRIVILEGES ON mydb.* TO 'sysadmin'@'localhost';

CREATE USER 'company'@'localhost' IDENTIFIED BY 'companypassword';
CREATE USER 'company'@'%' IDENTIFIED BY 'companypassword';
GRANT SELECT ON mydb.rider TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.parking_station TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.payment TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.penalty TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.permission TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.rents TO 'company'@'%';
GRANT SELECT ON mydb.review TO 'company'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.vehicle TO 'company'@'%';

CREATE USER 'store'@'localhost' IDENTIFIED BY 'storepassword';
CREATE USER 'store'@'%' IDENTIFIED BY 'storepassword';
GRANT SELECT ON mydb.rider TO 'store'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.payment TO 'store'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.penalty TO 'store'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.permission TO 'store'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.rents TO 'store'@'%';
GRANT SELECT ON mydb.review TO 'store'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.vehicle TO 'store'@'%';

CREATE USER 'research_center'@'localhost' IDENTIFIED BY 'centerpassword';
CREATE USER 'research_center'@'%' IDENTIFIED BY 'centerpassword';
GRANT SELECT ON mydb.visits TO 'research_center'@'%';
GRANT SELECT ON mydb.rider TO 'research_center'@'%';
GRANT SELECT ON mydb.group_member TO 'research_center'@'%';
GRANT SELECT ON mydb.point_of_interest TO 'research_center'@'%';
GRANT SELECT ON mydb.rents TO 'research_center'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.permission TO 'research_center'@'%';

CREATE USER 'simpleuser'@'localhost' IDENTIFIED BY 'simplepassword';
CREATE USER 'simpleuser'@'%' IDENTIFIED BY 'simplepassword';
GRANT SELECT ON mydb.parking_station TO 'simpleuser'@'%';
GRANT SELECT ON mydb.company TO 'simpleuser'@'%';
GRANT SELECT ON mydb.point_of_interest TO 'simpleuser'@'%';
GRANT SELECT ON mydb.vehicle TO 'simpleuser'@'%';
GRANT SELECT ON mydb.review TO 'simpleuser'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.rider TO 'simpleuser'@'%';
GRANT SELECT, INSERT, UPDATE ON mydb.group_member TO 'simpleuser'@'%';