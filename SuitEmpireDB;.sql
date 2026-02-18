CREATE DATABASE SuitEmpireDB;

GO

USE SuitEmpireDB;

GO

CREATE TABLE Designers (

    DesignerID INT PRIMARY KEY,

    DesignerName VARCHAR(50),

    Country VARCHAR(50)

);

CREATE TABLE Suits (

    SuitID INT PRIMARY KEY,

    SuitName VARCHAR(50),

    FabricType VARCHAR(50),

    Price DECIMAL(10,2),

    DesignerID INT,

    FOREIGN KEY (DesignerID) REFERENCES Designers(DesignerID)

);
INSERT INTO Designers VALUES

(1, 'Armani Couture', 'Italy'),

(2, 'Savile Row Masters', 'United Kingdom'),

(3, 'Paris Elite Tailors', 'France'),

(4, 'Milano Luxe', 'Italy'),

(5, 'Royal Bespoke', 'Canada');
INSERT INTO Suits VALUES

(101, 'Midnight Black Tuxedo', 'Velvet', 3500.00, 1),

(102, 'Classic Navy Slim Fit', 'Wool', 2800.00, 2),

(103, 'Ivory Wedding Suit', 'Silk Blend', 4200.00, 3),

(104, 'Charcoal Executive Suit', 'Cashmere', 3900.00, 4),

(105, 'Emerald Green Statement Suit', 'Premium Wool', 3100.00, 5);
SELECT 

    Designers.DesignerName,

    Designers.Country,

    Suits.SuitName,

    Suits.FabricType,

    Suits.Price

FROM Designers

INNER JOIN Suits

ON Designers.DesignerID = Suits.DesignerID;