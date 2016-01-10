SELECT Sales.id, Games.Title, Games.Release_Date, Games.Metascore,
Categories.Genre, Shops.Shop_Name, Prices.Price, Prices.On_Sale
FROM Sales
JOIN Shops ON Sales.ShopId = Shops.id
JOIN Games ON Sales.GameId = Games.id
JOIN Categories ON Sales.CategoryId = Categories.id
JOIN Prices ON Prices.id = Sales.id
ORDER BY Sales.id;

SELECT Sales.id, Games.Title, Games.Release_Date, Games.Metascore,
Categories.Genre, Shops.Shop_Name, Prices.Price, Prices.On_Sale
FROM Sales
JOIN Shops ON Sales.ShopId = Shops.id
JOIN Games ON Sales.GameId = Games.id
JOIN Categories ON Sales.CategoryId = Categories.id
JOIN Prices ON Prices.id = Sales.id
WHERE Prices.On_Sale > 0
ORDER BY Sales.id;