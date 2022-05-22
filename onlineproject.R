setwd("C:/Users/Aliaksei/Documents/Online project")
#Question 1
#a
library("readxl")
library("dplyr")
file1 <- read_excel("2019 Winter Data Science Intern Challenge Data Set.xlsx")

"\
a)
After reviewing the data set I see several possible reasons why just asking 
for mean would not give us a correct answer.

*Firstly, the number of total orders isn't being included in calculating that value,
so we should divide the order amount by the number of items purchased

*Secondly, it can be observed that some data entries are extremely high, which can
either be just an exteremely expensive pair of sneakers being sold or a system
error or typo. To resolve this I decided to get rid of the extreme values, i.e.
anything higher than 1000

b)
The metric would be order_amount / total_items ($/n)

c)
The new mean is AOV1 = 151.5427 which looks like the truth 
OR
if we include the extreme values which weren't a system error or typo,
AOV2 = 387.7428
"
#AOV1
AOV1 = mean (file1$order_amount / file1$total_items)
AOV1

#AOV2
new_data <- filter(file1, file1$order_amount < 1000) 
AOV2 = mean(new_data$order_amount / new_data$total_items)
AOV2


#Question 2

"\
Did everything online following the link here https://www.w3schools.com/SQL/TRYSQL.ASP?FILENAME=TRYSQL_SELECT_ALL
a) SELECT DISTINCT COUNT (ORDERID) FROM [Orders]
WHERE Orders.ShipperID = 1
Output: 54

b)
SELECT OrderID, MAX(Quantity) FROM [OrderDetails]

SELECT EmloyeeID FROM [Orders]
WHERE Orders.OrderID = 10398

SELECT LastName FROM [Employees]
WHERE EmployeeID = 2

Output: Fuller

To be honest, I could have done it in one or 2 queries here in R using 
Table1.Column1 = Table2.Column1

c)
SELECT CustomerID FROM Customers
WHERE Country = 'Germany'

SELECT OrderID FROM [Orders]
WHERE Orders.CustomerID = 1 OR Orders.CustomerID = 6 OR Orders.CustomerID = 17 OR
Orders.CustomerID = 25 OR Orders.CustomerID = 39 OR Orders.CustomerID = 44 OR Orders.CustomerID = 52 OR Orders.CustomerID = 56 OR Orders.CustomerID = 63 OR
Orders.CustomerID = 79 OR Orders.CustomerID = 86

SELECT ProductID, MAX(Quantity) FROM OrderDetails
WHERE OrderDetails.OrderID = 10267 OR
OrderDetails.OrderID = 10273 OR
OrderDetails.OrderID = 10277 OR
OrderDetails.OrderID = 10279 OR
OrderDetails.OrderID = 10284 OR
OrderDetails.OrderID = 10285 OR
OrderDetails.OrderID = 10286 OR
OrderDetails.OrderID = 10301 OR
OrderDetails.OrderID = 10312 OR
OrderDetails.OrderID = 10313 OR
OrderDetails.OrderID = 10323 OR
OrderDetails.OrderID = 10325 OR
OrderDetails.OrderID = 10337 OR
OrderDetails.OrderID = 10342 OR
OrderDetails.OrderID = 10343 OR
OrderDetails.OrderID = 10345 OR
OrderDetails.OrderID = 10348 OR
OrderDetails.OrderID = 10356 OR
OrderDetails.OrderID = 10361 OR
OrderDetails.OrderID = 10363 OR
OrderDetails.OrderID = 10391 OR
OrderDetails.OrderID = 10396 OR
OrderDetails.OrderID = 10407 OR
OrderDetails.OrderID = 10418 OR
OrderDetails.OrderID = 10438

SELECT ProductName FROM [Products]
WHERE Products.ProductID = 35

CustomerID
1
6
17
25
39
44
52
56
63
79
86

OrderID
10267
10273
10277
10279
10284
10285
10286
10301
10312
10313
10323
10325
10337
10342
10343
10345
10348
10356
10361
10363
10391
10396
10407
10418
10438


OUTPUT: Steleye Stout

I could have made these queries much smaller, but the platform didn't understand
the construct of Table1.Column1 = Table2.Column1 just as in the part b.
If I worked in R I would have done it differently!
"