SET NOCOUNT ON
GO

set quoted_identifier on
GO

/* Set DATEFORMAT so that the date strings are interpreted correctly regardless of
   the default DATEFORMAT on the server.
*/
SET DATEFORMAT mdy

GO
if exists (select * from sysobjects where id = object_id('dbo.Products') and sysstat & 0xf = 3)
	drop table "dbo"."Products"
GO
if exists (select * from sysobjects where id = object_id('dbo.Categories') and sysstat & 0xf = 3)
	drop table "dbo"."Categories"

GO
if exists (select * from sysobjects where id = object_id('dbo.Users') and sysstat & 0xf = 3)
	drop table "dbo"."Users"

	GO
if exists (select * from sysobjects where id = object_id('dbo.Carts') and sysstat & 0xf = 3)
	drop table "dbo"."Carts"


CREATE TABLE "Categories" (
	"CategoryID" "int" IDENTITY (1, 1) NOT NULL ,
	"CategoryName" nvarchar (30) NOT NULL ,
	CONSTRAINT "PK_Categories" PRIMARY KEY  CLUSTERED 
	(
		"CategoryID"
	)
)
GO
 CREATE  INDEX "CategoryName" ON "dbo"."Categories"("CategoryName")
GO

CREATE TABLE "Users" (
    "UserID" "int" IDENTITY (1, 1) NOT NULL,
	"FirstName" nvarchar(20) NULL,
	"LastName" nvarchar(20) NULL,
	"Password" nvarchar (60) NULL ,
	"PasswordHash" nvarchar (55) NULL ,
	"Email" nvarchar(50) NULL,	
	"Status" nvarchar(50) NULL,
	CONSTRAINT "PK_Users" PRIMARY KEY  CLUSTERED 
	(
		"UserID"
	),
)
GO
 CREATE  INDEX "City" ON "dbo"."Users"("City")
CREATE TABLE "Products" (
	"ProductID" "int" IDENTITY (1, 1) NOT NULL ,
	"ProductName" nvarchar (40) NOT NULL ,
	"CategoryID" "int" NULL ,
	"QuantityPerUnit" nvarchar (100) NULL ,
	"UnitPrice" "money" NULL CONSTRAINT "DF_Products_UnitPrice" DEFAULT (0),
	"UnitsInStock" "smallint" NULL CONSTRAINT "DF_Products_UnitsInStock" DEFAULT (0),
	CONSTRAINT "PK_Products" PRIMARY KEY  CLUSTERED 
	(
		"ProductID"
	),
	CONSTRAINT "FK_Products_Categories" FOREIGN KEY 
	(
		"CategoryID"
	) REFERENCES "dbo"."Categories" (
		"CategoryID"
	),
	CONSTRAINT "CK_Products_UnitPrice" CHECK (UnitPrice >= 0),
	CONSTRAINT "CK_UnitsInStock" CHECK (UnitsInStock >= 0)
)
GO
 CREATE  INDEX "CategoriesProducts" ON "dbo"."Products"("CategoryID")
GO
 CREATE  INDEX "CategoryID" ON "dbo"."Products"("CategoryID")
GO
 CREATE  INDEX "ProductName" ON "dbo"."Products"("ProductName")


 GO

CREATE TABLE "Carts" (
    "CartID" "int" IDENTITY (1, 1) NOT NULL,
	"Quantity" "int" NULL,
	"ProductID" "int" NULL,
	"UserID" "int" NULL,
	CONSTRAINT "PK_Carts" PRIMARY KEY  CLUSTERED 
	(
		"CartID"
	),
	CONSTRAINT "FK_Carts_Products" FOREIGN KEY 
	(
		"ProductID"
	) REFERENCES "dbo"."Products" (
		"ProductID"
	),
	CONSTRAINT "FK_Carts_Users" FOREIGN KEY 
	(
		"UserID"
	) REFERENCES "dbo"."Users" (
		"UserID"
	)
)
GO
 CREATE  INDEX "CategoriesProducts" ON "dbo"."Carts"("CategoryID")
GO
 CREATE  INDEX "CategoryID" ON "dbo"."Carts"("CategoryID")
GO
 CREATE  INDEX "ProductID" ON "dbo"."Carts"("ProductID")
 GO
 CREATE  INDEX "UserID" ON "dbo"."Carts"("UserID")
 
