
CREATE DATABASE envios;
USE envios;

CREATE TABLE Country 
    (
     id_country INTEGER NOT NULL IDENTITY(1,1) , 
     name VARCHAR (50) NOT NULL , 
     Region_id_region INTEGER NOT NULL 
    )
GO

ALTER TABLE Country ADD CONSTRAINT Country_PK PRIMARY KEY CLUSTERED (id_country, Region_id_region)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Customer 
    (
     id_customer INTEGER NOT NULL IDENTITY(1,1) , 
     code VARCHAR (20) NOT NULL , 
     name VARCHAR (150) NOT NULL , 
     address VARCHAR (200) , 
     phone VARCHAR (20) 
    )
GO

ALTER TABLE Customer ADD CONSTRAINT Customer_PK PRIMARY KEY CLUSTERED (id_customer)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Discount 
    (
     id_discount INTEGER NOT NULL IDENTITY(1,1) , 
     value DECIMAL (10,2) NOT NULL , 
     min_level INTEGER NOT NULL , 
     max_level INTEGER NOT NULL 
    )
GO

ALTER TABLE Discount ADD CONSTRAINT Discount_PK PRIMARY KEY CLUSTERED (id_discount)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Package 
    (
     id_package INTEGER NOT NULL IDENTITY(1,1) , 
     wight DECIMAL (10,3) NOT NULL , 
     high DECIMAL (10,3) NOT NULL , 
     width DECIMAL (10,3) NOT NULL , 
     long DECIMAL (10,3) NOT NULL , 
     description VARCHAR (500) , 
     total DECIMAL (18,6) NOT NULL , 
     Customer_id_customer INTEGER NOT NULL , 
     Discount_id_discount INTEGER NOT NULL , 
     Country_id_country INTEGER NOT NULL , 
     Region_id_region INTEGER NOT NULL 
    )
GO

ALTER TABLE Package ADD CONSTRAINT Package_PK PRIMARY KEY CLUSTERED (Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Region 
    (
     id_region INTEGER NOT NULL IDENTITY(1,1) , 
     name VARCHAR (75) NOT NULL , 
     tarifa DECIMAL (10,2) NOT NULL 
    )
GO

ALTER TABLE Region ADD CONSTRAINT Region_PK PRIMARY KEY CLUSTERED (id_region)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Country 
    ADD CONSTRAINT Country_Region_FK FOREIGN KEY 
    ( 
     Region_id_region
    ) 
    REFERENCES Region 
    ( 
     id_region 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Package 
    ADD CONSTRAINT Package_Country_FKv2 FOREIGN KEY 
    ( 
     Country_id_country, 
     Region_id_region
    ) 
    REFERENCES Country 
    ( 
     id_country , 
     Region_id_region 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Package 
    ADD CONSTRAINT Package_Customer_FK FOREIGN KEY 
    ( 
     Customer_id_customer
    ) 
    REFERENCES Customer 
    ( 
     id_customer 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Package 
    ADD CONSTRAINT Package_Discount_FK FOREIGN KEY 
    ( 
     Discount_id_discount
    ) 
    REFERENCES Discount 
    ( 
     id_discount 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

