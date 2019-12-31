CREATE TABLE Service_Logs (
    Ticket_No BIGINT NOT NULL,
    Customer_ID INT,
    Ticket_Date DATE,
    Service_Date DATE,
    Ticket_Closed CHAR(5),
    Product_Category VARCHAR(255),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Details (Customer_ID),
    FOREIGN KEY (Product_Category)
        REFERENCES Product_Details (Product_Category),
    CONSTRAINT PK_Ticket_No PRIMARY KEY (Ticket_No)
); 
SELECT 
    *
FROM
    Service_Logs;