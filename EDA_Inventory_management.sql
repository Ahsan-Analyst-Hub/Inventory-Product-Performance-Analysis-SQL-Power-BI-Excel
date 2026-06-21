create database inventory_management

use inventory_management
/* Now upload dataset (inventory + product) tables into the database using right click on task */

select * from inventory -- check if the table is loaded correctly 
select * from products

/* Now check table schema */

  SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Inventory';

-- Add three new numeric columns — Refund, Exchange, and Write_Off
ALTER TABLE Inventory
ADD Refund INT,
    Exchange INT,
    Write_Off INT;

select * from inventory

-- Now fill with the random values in that column
UPDATE Inventory
SET
    Refund = ABS(CHECKSUM(NEWID())) % 11,
    Exchange = ABS(CHECKSUM(NEWID())) % 11,
    Write_Off = ABS(CHECKSUM(NEWID())) % 11;


exec sp_rename 'inventory.order_date_DD_MM_YYYY', 'Order_Date','COLUMN'; -- Change the name of the column

select * from inventory
select * from Products

/* Left join */
select i.Order_Date,i.Product_ID,i.Availability,i.Demand,i.Refund,i.Exchange,i.Write_Off,p.Product_Name,p.Unit_Price 
from Inventory I left join Products p
on i.Product_ID =p.Product_ID

/* create a new table called full inventory */

select * into Full_inventory from 
(select i.Order_Date,i.Product_ID,i.Availability,i.Demand,i.Refund,i.Exchange,i.Write_Off,p.Product_Name,p.Unit_Price 
from Inventory I left join Products p
on i.Product_ID =p.Product_ID
)x

select * from Full_inventory