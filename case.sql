-- Query to Answer 10 Cases
USE GoGame
GO

-- CASE 1
SELECT [StaffID] = REPLACE(s.StaffID, 'ST', 'Staff'),
	[StaffName] = UPPER(StaffName),
	[Total Sales] = COUNT(sh.SalesID)
FROM MsStaff s 
	JOIN SalesHeader sh 
	ON s.StaffID = sh.StaffID
	JOIN MsCustomer c
	ON sh.CustomerID = c.CustomerID
WHERE StaffGender = 'Male' AND
	CustomerGender = 'Female'
GROUP BY
	s.StaffID,
	StaffName

-- CASE 2
SELECT ph.PurchaseID,
	[PurchaseDate] = CONVERT(VARCHAR, PurchaseDate, 103),
	[Total Game Type] = COUNT(GameTypeID)
FROM PurchaseHeader ph
	JOIN PurchaseDetail pd
	ON ph.PurchaseID = pd.PurchaseID
	JOIN MsGame g
	ON pd.GameID = g.GameID
WHERE YEAR(PurchaseDate) = 2019
GROUP BY ph.PurchaseID,
	PurchaseDate
HAVING COUNT(GameTypeID) > 2

-- CASE 3
SELECT [CustomerID] = REVERSE(c.CustomerID),
	[CustomerName] = UPPER(CustomerName),
	[TotalTransaction] = COUNT(DISTINCT sh.SalesID),
	[MinimumPurchase] = MIN(SalesQuantity)
FROM MsCustomer c
	JOIN SalesHeader sh
	ON c.CustomerID = sh.CustomerID
	JOIN SalesDetail sd
	ON sh.SalesID = sd.SalesID
WHERE CustomerName LIKE 'M%'
GROUP BY c.CustomerID,
	CustomerName
HAVING COUNT(sh.SalesID) > 1

-- CASE 4
SELECT su.SupplierID,
	[SupplierName] = CONCAT(SupplierName, ' .Inc'),
	[TotalGamesSold] = SUM(PurchaseQuantity),
	[MaximumGamesSold] = MAX(PurchaseQuantity)
FROM MsSupplier su
	JOIN PurchaseHeader ph
	ON su.SupplierID = ph.SupplierID
	JOIN PurchaseDetail pd
	ON ph.PurchaseID = pd.PurchaseID
WHERE SupplierAddress LIKE '%Drive%' AND
	CONVERT(int, SUBSTRING(su.SupplierID, 3, 5)) % 2 <> 0
GROUP BY su.SupplierID,
	SupplierName

-- CASE 5
SELECT PurchaseID,
	su.SupplierID,
	[StaffFirstName] = SUBSTRING(StaffName, 1, CHARINDEX(' ', StaffName)),
	StaffDOB
FROM (
	SELECT AVG(StaffSalary) as AverageSalary
	FROM MsStaff
	) AS ALIAS,
	MsSupplier su
	JOIN PurchaseHeader ph
	ON su.SupplierID = ph.SupplierID
	JOIN MsStaff s
	ON ph.StaffID = s.StaffID
WHERE YEAR(StaffDOB) > 2000 AND
	StaffSalary > ALIAS.AverageSalary

-- CASE 6
SELECT DISTINCT sh.SalesID,
	SalesDate,
	CustomerName = LOWER(CustomerName)
FROM (
	SELECT AVG(SalesQuantity) AS AvgSalesQuantity
	FROM SalesDetail
	) AS ALIAS,
	MsCustomer c
	JOIN SalesHeader sh
	ON c.CustomerID = sh.CustomerID
	JOIN SalesDetail sd
	ON sh.SalesID = sd.SalesID
WHERE DATEDIFF(YEAR, CustomerDOB, GETDATE()) < 24 AND
	SalesQuantity > ALIAS.AvgSalesQuantity

-- CASE 7
SELECT [PurchasedDay] = DATENAME(WEEKDAY, PurchaseDate),
	[GameID] = REPLACE(g.GameID, 'GA', 'Game'),
	[GameReleasedYear] = YEAR(ReleaseDate),
	[TotalPurchased] = SUM(PurchaseQuantity)
FROM (
	SELECT AVG(GamePrice) AS AvgGamePrice
	FROM MsGame
	) AS ALIAS,
	PurchaseHeader ph
	JOIN PurchaseDetail pd
	ON ph.PurchaseID = pd.PurchaseID
	JOIN MsGame g
	ON pd.GameID = g.GameID
WHERE GamePrice > ALIAS.AvgGamePrice AND 
	DATENAME(QUARTER, ReleaseDate) = 2
GROUP BY PurchaseDate,
	g.GameID,
	ReleaseDate

-- CASE 8
SELECT [SalesID] = LOWER(sh.SalesID),
	[SalesDate] = CONVERT(VARCHAR, SalesDate, 105),
	[TotalSaleCost] = 'Rp.' + CONVERT(VARCHAR, CONVERT(NUMERIC, SUM(SalesQuantity * GamePrice)))
FROM (
	SELECT AVG(StaffSalary) as AverageSalary
	FROM MsStaff
	) AS ALIAS, 
	SalesHeader sh
	JOIN SalesDetail sd 
	ON sh.SalesID = sd.SalesID
	JOIN MsGame g
	ON sd.GameID = g.GameID
	JOIN MsStaff s
	ON sh.StaffID = s.StaffID
WHERE StaffSalary > ALIAS.AverageSalary AND
	MONTH(SalesDate) = 2
GROUP BY sh.SalesID,
	SalesDate

-- CASE 9
GO
CREATE VIEW Customer_Quarterly_Transaction_View
AS 
	SELECT cu.CustomerID,
		CustomerName,
		[TotalTransaction] = COUNT(sh.SalesID),
		[MaximumPurchaseQuantity] = CONVERT(VARCHAR, MAX(SalesQuantity)) + 'Pc(s)'
	FROM MsCustomer cu
		JOIN SalesHeader sh
		ON cu.CustomerID = sh.CustomerID
		JOIN SalesDetail sd
		ON sh.SalesID = sd.SalesID
		JOIN MsStaff s
		ON sh.StaffID = s.StaffID
	WHERE YEAR(SalesDate) = 2021 AND
		StaffGender = 'Female'
	GROUP BY cu.CustomerID,
		CustomerName
GO


-- CASE 10
GO
CREATE VIEW QuarterlySalesReport
AS 
	SELECT [TotalSales] = 'Rp.' + CONVERT(VARCHAR, CONVERT(NUMERIC, SUM(SalesQuantity * GamePrice))),
		[AverageSales] = 'Rp.' + CONVERT(VARCHAR, AVG(SalesQuantity * GamePrice))
	FROM SalesHeader sh
		JOIN SalesDetail sd
		ON sh.SalesID = sd.SalesID
		JOIN MsGame g
		ON sd.GameID = g.GameID
	WHERE DATENAME(QUARTER, SalesDate) = 1 AND
		GamePrice > 200000
GO		