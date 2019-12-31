CREATE TABLE Product_Details (
    Customer_ID INT,
    Product_Category VARCHAR(255) NOT NULL,
    Brand VARCHAR(255),
    Quantity INT,
    Warranty_Start_Date DATE,
    Warranty_End_Date DATE,
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Details (Customer_ID),
    CONSTRAINT PK_Product_Category PRIMARY KEY (Product_Category)
);
SELECT 
    *
FROM
    Product_Details;