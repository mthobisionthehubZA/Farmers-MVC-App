--Create database----
Create DATABASE Farmer_V2

--use datase farmers_v2, this will help in locating the created tables to the correct database--
USE Farmer_V2

--Create table farmers to store farmers  information--
CREATE TABLE FARMERS(
UserID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Village_Name VARCHAR(50) NOT NULL,
[TYPE OF FARMING] VARCHAR(30) NOT NULL,
[PROVINCE]  VARCHAR (50) NOT NULL,
[GENDER] VARCHAR(20) NOT NULL,
FOREIGN KEY ([GENDER]) REFERENCES GENDERS([GENDER]),
FOREIGN KEY ([PROVINCE] ) REFERENCES PROVINCES([PROVINCE]),
FOREIGN KEY ([TYPE OF FARMING] ) REFERENCES FARM_TYPES([TYPE OF FARMING] )
);



--Create table Gender to -- 
CREATE TABLE GENDERS(
[GENDER] VARCHAR(20) PRIMARY KEY NOT NULL,
);



--Create table farm type-- 
CREATE TABLE FARM_TYPES(
[TYPE OF FARMING] VARCHAR(30)PRIMARY KEY NOT NULL
);

-- Create table province to store all the provinces of south africa --
Create table PROVINCES(
[PROVINCE] VARCHAR(50)PRIMARY KEY NOT NULL
);


--inserting data into the gender table--
INSERT INTO GENDERS([GENDER]) VALUES
('Male'),
('Female'),
('Unspecified');

-- inserting data into the farm type table--
INSERT INTO  FARM_TYPES([TYPE OF FARMING]) VALUES
('Arable'),
('Postoral'),
('Mixed'),
('Subsistence'),
('Commercial'),
('Intensive'),
('Extensive'),
('Sedentary')

--inserting data into the provinces table--
INSERT INTO PROVINCES([PROVINCE]) VALUES
('Eastern Cape' ),
('Free State' ),
('Gauteng' ),
('KwaZulu-Natal' ),
('Limpopo' ),
('Mpumalanga' ),
('Northen Cape' ),
('North West' ),
('Western Cape' )



--Made by Mthobisi M---
--end syntax---