use [AdventureWorks2012]
-- Table State

CREATE TABLE [State]
(
 [SPK] Int IDENTITY ,
 [StateAbbreviation] Nvarchar(10) NOT NULL,
 [StateName] Nvarchar(50) ,
 [StateFIPS] Nvarchar(50) 
)
go
ALTER TABLE [State] ADD CONSTRAINT [Key1] PRIMARY KEY ([StateAbbreviation])
go

-- Table County
CREATE TABLE [County]
(
 [SPK] Int IDENTITY ,
 [CountyName] Nvarchar(50) ,
 [FIPS] Nvarchar(50) ,
 [StateAbbreviation] Nvarchar(10) NOT NULL
)
go
ALTER TABLE [County] ADD CONSTRAINT [Key2] PRIMARY KEY ([StateAbbreviation])
go

-- Table Zip
CREATE TABLE [Zip]
(
 [SPK] Int IDENTITY ,
 [Zip] Nvarchar(50) ,
 [town] Nvarchar(50) ,
 [StateAbbreviation] Nvarchar(10) NOT NULL
)
go
ALTER TABLE [Zip] ADD CONSTRAINT [Key3] PRIMARY KEY ([StateAbbreviation])
go

-- Create foreign keys 
ALTER TABLE [County] ADD CONSTRAINT [Relationship1] FOREIGN KEY ([StateAbbreviation]) REFERENCES [State] ([StateAbbreviation]) ON UPDATE NO ACTION ON DELETE NO ACTION
go
ALTER TABLE [Zip] ADD CONSTRAINT [Relationship2] FOREIGN KEY ([StateAbbreviation]) REFERENCES [State] ([StateAbbreviation]) ON UPDATE NO ACTION ON DELETE NO ACTION
go