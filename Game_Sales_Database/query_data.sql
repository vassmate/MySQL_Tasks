SELECT Games.*, category.Main_category, category.Genre, shops.Shop_Name, shops.Price, shops.On_Sale
FROM Games
JOIN category ON category.id = Games.id
JOIN shops ON shops.id = Games.id;

SELECT Games.*, category.Main_category, category.Genre, shops.Shop_Name, shops.Price, shops.On_Sale
FROM Games
JOIN category ON category.id = Games.id
JOIN shops ON shops.id = Games.id WHERE On_Sale > 0;

SELECT Games.*, category.Main_category, category.Genre, shops.Shop_Name, shops.Price, shops.On_Sale
FROM Games
JOIN category ON category.id = Games.id
JOIN shops ON shops.id = Games.id WHERE Release_Date > '2015.04.21';

SELECT Games.*, category.Main_category, category.Genre, shops.Shop_Name, shops.Price, shops.On_Sale
FROM Games
JOIN category ON category.id = Games.id
JOIN shops ON shops.id = Games.id WHERE Shop_Name = 'CD Galaxis';
