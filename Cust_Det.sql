CREATE DATABASE Mydb;
USE Mydb;
SHOW TABLES;

CREATE TABLE Customer_Details (
    Customer_ID INT,
    Name VARCHAR(255) NOT NULL,
    City VARCHAR(255),
    State VARCHAR(255),
    Sector VARCHAR(255),
    Product_Category varchar(255),
    Total_Revenue DOUBLE,
    Ticket_No INT,
    Service_Pending CHAR(5),
    FOREIGN KEY (Sector) 
    REFERENCES Sector_Details(Sector),
    FOREIGN KEY (Product_Category) 
    REFERENCES Product_Details(Product_Category),
    FOREIGN KEY (Total_Revenue) 
    REFERENCES Billing_Details(Total_Revenue),
    FOREIGN KEY (Ticket_No) 
    REFERENCES Service_Logs(Ticket_No),
    CONSTRAINT PK_Customer_ID PRIMARY KEY(Customer_ID)
);
SELECT 
    *
FROM
    Customer_Details;

INSERT INTO Customer_Details (Customer_ID, Name, City, State, Sector, Product_Category, Total_Revenue, Ticket_No, Service_Pending) VALUES (1234, 'Sterling', 'Bombay', 'Maharashtra', 'Pharma', 'Audio', 100000, 001234, 'Yes');
INSERT INTO Customer_Details (Customer_ID, Name, City, State, Sector, Product_Category, Total_Revenue, Ticket_No, Service_Pending) VALUES (2345, 'UTI', 'Bombay', 'Maharashtra', 'Government', 'Video', 120000, 002345, 'No');
INSERT INTO Customer_Details (Customer_ID, Name, City, State, Sector, Product_Category, Total_Revenue, Ticket_No, Service_Pending) VALUES (3456, 'Windals', 'Bombay', 'Maharashtra', 'Automotive', 'Video', 10000, 003456, 'Yes');
INSERT INTO Customer_Details (Customer_ID, Name, City, State, Sector, Product_Category, Total_Revenue, Ticket_No, Service_Pending) VALUES (4567, 'TUV SUD', 'Bombay', 'Maharashtra', 'Corporate', 'Video', 10050, 004567, 'Yes');
INSERT INTO Customer_Details (Customer_ID, Name, City, State, Sector, Product_Category, Total_Revenue, Ticket_No, Service_Pending) VALUES (5678, 'Siemens', 'Bombay', 'Maharashtra', 'Pharma', 'Audio', 140000, 005678, 'Yes');
