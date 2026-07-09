# GoGame-SQL
Final project for academic course Introduction to Database System


| Software Used |
| --- |
| SQL Server Developer 2019 |
| SQL Server Management Studio 18.9.1 |
| Visual Paradigm Community Edition 16.3 |


### The queries:
1. Display StaffID (obtained from CustomerID replacing 'ST' with 'Staff'), StaffName (obtained from StaffName in uppercase format), and Total Sales (obtained from the total sales) for each staff whose gender equals to Male, and customer handled gender equals to Female.

2. Display PurchaseID, PurchaseDate (obtained from PurchaseDate in 'dd/MM/yyyy' format), Total Game Type (obtained from the total of GameType) for every purchase that occurs in 2019 and total GameType purchased is more than 2.


3. Display CustomerCode (obtained from reversing CustomerID), CustomerName (obtained from CustomerName in uppercase format), TotalTransaction (obtained from the total of customer transaction and no duplicate data), and MinimumPurchase (obtained from the minimum purchase quantity for the transaction) for every customer which name starts with 'M' and TotalTransaction made is more than 1.

4. Display SupplierID, SupplierName (obtained from SupplierName added with ' Inc.' in the end of SupplierName), TotalGamesSold (obtained from sum of quantity sold), MaximumGamesSold (Obtained from the maximum quantity sold in a transaction) for every supplier which address contains 'Drive' and SupplierID digit is an odd number.

5. Display PurchaseID, SupplierID, SupplierName, StaffFirstName (obtained from the first word of StaffName), StaffDOB for every transaction that is handled by Staff whose salary is above the staff average salary and Staff year of birth is greater than 2000. (ALIAS SUBQUERY)

6. Display SalesID, SalesDate, CustomerName (obtained from CustomerName in lowercase format) for every transaction that serves customer whose age is below 24 and quantity is more than the average of transaction quantity. (ALIAS SUBQUERY)

7. Display PurchasedDay (obtained from the dayname of the TransactionDate), GameID (obtained from GameID replacing 'GA' with 'Game'), GameReleasedYear (Obtained from the year of the GameReleaseDate), TotalPurchased (obtained from the Total quantity of GamePurchased) for every game which price is more than the average price and released in the second quarter of the year. (ALIAS SUBQUERY)

8. Display SalesID (obtained from SaleID in lowercase format), SalesDate (obtained from SalesDate in 'dd-MMM-yyy' format), TotalSalesCost  (obtained from sum of Quantity * GamePrice and added with 'Rp. ' in front of TotalSalesCost) for every transaction who is handled by staff which salary is higher than average staff salary and transaction occurs in February. (ALIAS SUBQUERY)

9. Create a view named 'Customer_Quarterly_Transaction_View' to display CustomerID, CustomerName, TotalTransaction (obtained from the total of transaction), MaximumPurchaseQuantity (obtained from the maximum quantity of transaction added with 'Pc(s)' in the end of MaximumPurchaseQuantity) for every customer who made a transaction in 2021 and handled by staff whose gender is Female.

10. Create a view named 'QuarterlySalesReport' to display TotalSales (obtained from sum of Quantity * GamePrice and added with 'Rp.' in front of TotalSales), and AverageSales (obtained from average of Quantity * Gameprice and added with 'Rp.' in front of AverageSales) for every transaction that occurs in the first quarter and GamePrice is higher than 200000.
