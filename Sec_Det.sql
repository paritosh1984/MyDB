CREATE TABLE Sector_Details (
    Sector VARCHAR(255) NOT NULL,
    Customer_ID INT,
    Order_Value BIGINT,
    CONSTRAINT PK_Sector PRIMARY KEY (Sector)
);
SELECT 
    *
FROM
    Sector_Details;
    
ALTER TABLE Sector_Details DROP Customer_ID;

INSERT INTO Sector_Details (Sector, Order_Value) VALUES ('Pharma',1000000);
INSERT INTO Sector_Details (Sector, Order_Value) VALUES ('Automotive', 200000);
INSERT INTO Sector_Details (Sector, Order_Value) VALUES ('Government', 100000);
INSERT INTO Sector_Details (Sector, Order_Value) VALUES ('Technology', 100000);
INSERT INTO Sector_Details (Sector, Order_Value) VALUES ('Consulting', 100000);

DELETE FROM Sector_Details WHERE Sector = 'Pharma' AND Order_Value = 100000;


