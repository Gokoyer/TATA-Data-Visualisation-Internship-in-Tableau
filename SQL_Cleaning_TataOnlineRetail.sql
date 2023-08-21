---This is a project on Forage on TATA Data Visualisation: Empowering Business with Effective Insights
SELECT *
FROM [dbo].[OnlineRetailTATA]
ORDER BY [InvoiceDate]

--To delete Quantity below 1 unit
SELECT *
FROM [dbo].[OnlineRetailTATA]
WHERE [Quantity] < 1

DELETE FROM [dbo].[OnlineRetailTATA]
WHERE Quantity < 1

--To delete UnitPrice below $0
SELECT *
FROM [dbo].[OnlineRetailTATA]
WHERE [UnitPrice] < 0
 
 DELETE FROM [dbo].[OnlineRetailTATA]
 WHERE [UnitPrice] < 0

 
 --To create new column named Revenue
 ALTER TABLE [dbo].[OnlineRetailTATA]
 ADD Revenue FLOAT

  --This is to view what Revenue will looks like
SELECT 
	([Quantity] * [UnitPrice]) AS Revenue
FROM [dbo].[OnlineRetailTATA]

 --To generate Revenue, this is done by multiplying Quantity and Unit Price
UPDATE [dbo].[OnlineRetailTATA]
SET Revenue = ([Quantity] * [UnitPrice])

--To create an Invoice Date Column where respective Months will be extracted from
ALTER TABLE [dbo].[OnlineRetailTATA]
ADD InvoiceDate_2 NVARCHAR(100)

UPDATE [dbo].[OnlineRetailTATA]
SET InvoiceDate_2 = CAST([InvoiceDate] AS NVARCHAR)

--To create Month Column where respective Months will be extracted to
ALTER TABLE [dbo].[OnlineRetailTATA]
ADD [Month] NVARCHAR(100)


--Categorized months
SELECT [InvoiceDate_2], CASE
	WHEN MONTH([InvoiceDate_2]) = 1 THEN 'Jan'
	WHEN MONTH([InvoiceDate_2]) = 2 THEN 'Feb'
	WHEN MONTH([InvoiceDate_2]) = 3 THEN 'Mar'
	WHEN MONTH([InvoiceDate_2]) = 4 THEN 'Apr'
	WHEN MONTH([InvoiceDate_2]) = 5 THEN 'May'
	WHEN MONTH([InvoiceDate_2]) = 6 THEN 'Jun'
	WHEN MONTH([InvoiceDate_2]) = 7 THEN 'Jul'
	WHEN MONTH([InvoiceDate_2]) = 8 THEN 'Aug'
	WHEN MONTH([InvoiceDate_2]) = 9 THEN 'Sep'
	WHEN MONTH([InvoiceDate_2]) = 10 THEN 'Oct'
	WHEN MONTH([InvoiceDate_2]) = 11 THEN 'Nov'
	WHEN MONTH([InvoiceDate_2]) = 12 THEN 'Dec'
ELSE [InvoiceDate_2] 
END AS [Month]
FROM [dbo].[OnlineRetailTATA]

UPDATE [dbo].[OnlineRetailTATA]
SET [Month] = CASE
	WHEN MONTH([InvoiceDate_2]) = 1 THEN 'Jan'
	WHEN MONTH([InvoiceDate_2]) = 2 THEN 'Feb'
	WHEN MONTH([InvoiceDate_2]) = 3 THEN 'Mar'
	WHEN MONTH([InvoiceDate_2]) = 4 THEN 'Apr'
	WHEN MONTH([InvoiceDate_2]) = 5 THEN 'May'
	WHEN MONTH([InvoiceDate_2]) = 6 THEN 'Jun'
	WHEN MONTH([InvoiceDate_2]) = 7 THEN 'Jul'
	WHEN MONTH([InvoiceDate_2]) = 8 THEN 'Aug'
	WHEN MONTH([InvoiceDate_2]) = 9 THEN 'Sep'
	WHEN MONTH([InvoiceDate_2]) = 10 THEN 'Oct'
	WHEN MONTH([InvoiceDate_2]) = 11 THEN 'Nov'
	WHEN MONTH([InvoiceDate_2]) = 12 THEN 'Dec'
END 


