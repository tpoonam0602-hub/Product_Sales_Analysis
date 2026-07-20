USE [Product Sales Analysis];

SELECT * From [dbo].[Product_Sales];

---Total Sales
select sum (TotalPrice) as Total_Sale
from [dbo].[Product_Sales];

---Total Orders Count
select count (OrderID)
from [dbo].[Product_Sales];

---Total Product Quantity
select  Product, count(Quantity)
from [dbo].[Product_Sales]
group by Product;

---Avera Sales (Min, Max)
select AVG(TotalPrice) as Avg_Sale
from [dbo].[Product_Sales];

select Min(TotalPrice) as Lowest_Sale
from [dbo].[Product_Sales];

select Max(TotalPrice) as Highest_Sale
from [dbo].[Product_Sales];

---Region wise Sales
SELECT Region,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY Region;

---Product wise Sales
SELECT Product,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY Product;

---Payment Method
SELECT PaymentMethod,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY PaymentMethod;

---Store Location wise Product Sales
SELECT StoreLocation, Product,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY StoreLocation, Product
Order By Total_Sales desc;

---Customer Type wise Sales
SELECT CustomerType,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY CustomerType
Order By Total_Sales desc;

---Payment Method Count
select PaymentMethod,
count(PaymentMethod)
FROM [dbo].[Product_Sales]
group by PaymentMethod;

---Payment Method wise Sales
SELECT (PaymentMethod),
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY PaymentMethod
Order By Total_Sales desc;

---Total Returned Count
select count(Returned) 
FROM [dbo].[Product_Sales]
where Returned = 1;

---Returned Product Wise Payment
SELECT Returned, Product,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY Returned, Product
Order By Total_Sales desc;

---Total Shipping Cost
select sum(ShippingCost)
FROM [dbo].[Product_Sales];

---Top 10 Customer
SELECT Top 10 CustomerName,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY CustomerName
Order By Total_Sales desc;

---Average Discount by Product
SELECT Product,
       AVG(Discount) AS Avg_Discount
FROM [dbo].[Product_Sales]
GROUP BY Product;

---Sales Person Performance
SELECT Salesperson,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY Salesperson
ORDER BY Total_Sales DESC;

---Monthly Sales
SELECT MONTH(OrderDate) AS Month_No,
       SUM(TotalPrice) AS Total_Sales
FROM [dbo].[Product_Sales]
GROUP BY MONTH(OrderDate)
ORDER BY Month_No;





