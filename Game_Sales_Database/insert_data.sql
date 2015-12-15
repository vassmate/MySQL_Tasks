INSERT INTO Games
VALUES(1, 'Fallout 4', '2015.11.10', 84);
INSERT INTO Games
VALUES(2, 'The Witcher 3: Wild Hunt', '2015.05.18', 93);
INSERT INTO Games
VALUES(3, 'Tom Clancys Rainbowsix Siege ', '2015.12.01', 79);
INSERT INTO Games
VALUES(4, 'Killing Floor 2', '2015.04.21', 83);
INSERT INTO Games
VALUES(5, 'Elite: Dangerous', '2015.04.02', 80);

INSERT INTO Categories
VALUES(1, 'RPG');
INSERT INTO Categories
VALUES(2, 'FPS');
INSERT INTO Categories
VALUES(3, 'Simlator');

INSERT INTO Shops
VALUES(1, 'Steam');
INSERT INTO Shops
VALUES(2, 'CD Galaxis');

INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(1, 1, 19000, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(1, 2, 12000, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(2, 1, 17000, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(2, 2, 8500, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(3, 1, 15000, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(3, 2, 15000, 0);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(4, 1, 9000, 33);
INSERT INTO Prices(GameId, ShopId, Price, On_Sale)
VALUES(5, 1, 6500, 20);

INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(1, 1, 1);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(1, 1, 2);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(2, 1, 1);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(2, 1, 2);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(3, 2, 1);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(3, 2, 2);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(4, 2, 1);
INSERT INTO Sales(GameId, CategoryId, ShopId)
VALUES(5, 3, 1);
