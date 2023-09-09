set quoted_identifier on
go
set identity_insert "Categories" on
go
ALTER TABLE "Categories" NOCHECK CONSTRAINT ALL
go
INSERT "Categories"("CategoryID","CategoryName") VALUES(1,'Clothes')
INSERT "Categories"("CategoryID","CategoryName") VALUES(2,'Staple Food')
INSERT "Categories"("CategoryID","CategoryName") VALUES(3,'Fast Food')
INSERT "Categories"("CategoryID","CategoryName") VALUES(4,'Meat-Meat Products')
INSERT "Categories"("CategoryID","CategoryName") VALUES(5,'Cleaning Products')
INSERT "Categories"("CategoryID","CategoryName") VALUES(6,'Hot Beverages')
INSERT "Categories"("CategoryID","CategoryName") VALUES(7,'Cold Beverages')
INSERT "Categories"("CategoryID","CategoryName") VALUES(8,'Stationary')
INSERT "Categories"("CategoryID","CategoryName") VALUES(9,'Jewelry')
INSERT "Categories"("CategoryID","CategoryName") VALUES(10,'Cosmetics')

go
set identity_insert "Categories" off
go
ALTER TABLE "Categories" CHECK CONSTRAINT ALL
go
set quoted_identifier on

go
set quoted_identifier on
go
set identity_insert "Products" on
go
ALTER TABLE "Products" NOCHECK CONSTRAINT ALL
go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(1,'Belt',1,'3 centimetres x 100 centimetres',20,50)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(2,'Glasses',1,'color:black',23,39)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(3,'Hat',1,'style:bumper',30,23)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(4,'Jacket',1,'Sleeve length:40 centimetres',29,33)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(5,'Jeans',1,'thick and color:black',27,34)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(6,'Shoes',1,'color:white',28,90)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(7,'Shorts',1,'color:brown and 50 centimetres',40,25)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(8,'Sweatshirt',1,'fabric:wool',60,96)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(9,'Tshirt',1,'color:blue and v-necked',87,32)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(10,'Swimsuit',1,'color:darkblue',130,25)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(11,'Bread',2,'250 grams',10,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(12,'Salt',2,'300 grams',43,39)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(13,'Sugar',2,'500 grams',50,32)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(14,'Cheese',2,'500 grams',39,50)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(15,'Black Olive',2,'200 grams',37,44)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(16,'Green Olive',2,'200 grams',38,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(17,'All Fruits',2,'1 kilogramme',200,35)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(18,'Flour',2,'1 kilogramme',50,46)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(19,'Egg',2,'quantity:30',77,200)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(20,'All Vegetables',2,'1 kilogramme',250,95)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(21,'Hamburger',3,'150 grams chicken burger',150,120)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(22,'French Fries',3,'big boy',93,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(23,'Pizza',3,'8 slices',110,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(24,'Pasta',3,'with sauce',89,60)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(25,'Wrap',3,'200 grams',77,23)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(26,'Cake',3,' with pistachio',128,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(27,'Sandwich',3,'with cheese',90,38)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(28,'Lahmacun',3,'with spicy',50,127)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(29,'Flat Bread',3,' with cheese',97,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(30,'Popcorn',3,'middle-sized',80,75)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(31,'Meat',4,'1 kilogramme',500,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(32,'Chicken',4,'1 kikogramme',300,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(33,'Fish',4,'1 kilogramme',200,80)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(34,'Sausage',4,'500 grams',250,90)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(35,'Bacon',4,'1 kilogramme',300,70)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(36,'Fried Meat',4,'750 grams',350,60)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(37,'Beef Jerky',4,'500 grams',250,68)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(38,'Meatball',4,'1 kilogramme',450,85)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(39,'Salami',4,'300 grams',175,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(40,'Mince',4,'400 grams',300,65)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(41,'Soap',5,'quantity:5',80,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(42,'Bleach',5,'1 litre',100,200)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(43,'Vacuum Cleaner',5,'quantity:20',50,70)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(44,'Trash Bag',5,'30 centimetres x 70 centimetres',90,50)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(45,'Trash Can',5,'quantity:5',40,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(46,'Mop',5,'40 centimeres x 80 centimetres',100,70)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(47,'Bucket',5,'quantity:10',100,88)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(48,'Sponge',5,'10 centimetres x 30 centimetres',30,75)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(49,'Scrubbing Brush',5,'500 millilitres',125,50)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(50,'Dustpan',5,'1 litre vacuum bag',2000,35)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(51,'Tea',6,'1 kilogramme',80,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(52,'Coffee',6,'500 grams',150,120)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(53,'Green Tea',6,'350 grams',130,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(54,'Herbal Tea',6,'560 grams',170,80)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(55,'Milk',6,'1 litre',60,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(56,'Salep',6,'500 millilitres',110,90)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(57,'Mint and Lemon',6,'500 millilitres',90,82)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(58,'Sage',6,'1 litre',115,67)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(59,'Hot Chocolate',6,'500 millilitres',75,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(60,'Americano',6,'1 litre',300,29)


go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(61,'Ayran',7,'1 litre',40,80)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(62,'Coke',7,'1 litre',60,70)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(63,'Fruit Juice',7,'1 litre',50,90)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(64,'Iced Coffee',7,'500 millilitres',85,45)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(65,'Milkshake',7,'250 millilitres',65,35)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(66,'Soda',7,'200 millilitres',45,23)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(67,'Water',7,'5 litres',30,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(68,'Lemonade',7,'500 millilitres',33,78)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(69,'Iced Tea',7,'400 millilitres',55,59)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(70,'Energy Drink',7,'1 litre',100,49)


go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(71,'Book',8,'250 pages',70,135)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(72,'Notebook',8,'80 pages striped',40,200)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(73,'Folder',8,'50 leaves',50,67)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(74,'Pencil Case',8,'20 centimetres x 50 centimetres',150,55)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(75,'Pencil',8,'quantity:5',50,235)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(76,'Dictionary',8,'200 leaves',145,30)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(77,'Highlighter',8,'quantity:5',100,200)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(78,'Watercolour',8,'quantity:12',120,89)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(79,'Brushes',8,'quantity:4',55,60)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(80,'Calculator',8,'small-sized',148,53)


go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(81,'Ring',9,'Silver',300,35)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(82,'Earrings',9,'Silver',200,40)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(83,'Necklace',9,'Gold',1500,17)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(84,'Bracelet',9,'Steel',100,95)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(85,'Clasp',9,'quantity:5',150,25)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(86,'Cufflinks',9,'quantity:4',555,30)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(87,'Pin',9,'silver',250,60)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(88,'Hoop Earnings',9,'Steel',70,189)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(89,'Wedding Ring',9,'Gold',575,100)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(90,'Bangle',9,'Steel',130,83)

go
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(91,'Mascara',10,'long and curly eyelash',350,75)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(92,'Concealer',10,'3 different body types',240,50)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(93,'Liquid Eyeliner',10,'easy usage',300,57)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(94,'Eyeshadow',10,'6 different colors',250,65)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(95,'Face cream',10,'with lavender',150,45)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(96,'Highlighter',10,'proper for all body types',345,39)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(97,'Blush',10,'3 different colors',250,80)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(98,'Bronzer',10,'3 different body types',270,103)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(99,'Powder',10,'proper for all body types',275,110)
INSERT "Products"("ProductID","ProductName","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock") VALUES(100,'Brow Gel',10,'proper for all body types',230,79)

go
set identity_insert "Products" off
go
ALTER TABLE "Products" CHECK CONSTRAINT ALL
