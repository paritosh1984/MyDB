CREATE TABLE Billing_Details (
    Invoice_Number ENUM('VC','AV','Data','DC','CCTV') NOT NULL,
    Customer_ID INT,
    Total_Revenue BIGINT,
    Amount_Received BIGINT,
    Amount_Pending BIGINT,
    No_of_Days INT,
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Details (Customer_ID),
    CONSTRAINT PK_Invoice_Number PRIMARY KEY (Invoice_Number)
);
SELECT 
    *
FROM
    Billing_Details;