SELECT TOP (1000) [ORDERNUMBER]
      ,[QUANTITYORDERED]
      ,[PRICEEACH]
      ,[ORDERLINENUMBER]
      ,[SALES]
      ,[ORDERDATE]
      ,[STATUS]
      ,[QTR_ID]
      ,[MONTH_ID]
      ,[YEAR_ID]
      ,[PRODUCTLINE]
      ,[MSRP]
      ,[PRODUCTCODE]
      ,[CUSTOMERNAME]
      ,[PHONE]
      ,[ADDRESSLINE1]
      ,[ADDRESSLINE2]
      ,[CITY]
      ,[STATE]
      ,[POSTALCODE]
      ,[COUNTRY]
      ,[TERRITORY]
      ,[CONTACTLASTNAME]
      ,[CONTACTFIRSTNAME]
      ,[DEALSIZE]
  FROM [akshitadb].[dbo].[TASK 6]

  SELECT 
    ORDERDATE,
    MONTH(ORDERDATE) AS OrderMonth
FROM 
    [akshitadb].[dbo].[TASK 6];

	ALTER TABLE [akshitadb].[dbo].[TASK 6]
       ADD OrderMonth INT;
    UPDATE [akshitadb].[dbo].[TASK 6]
       SET OrderMonth = MONTH(ORDERDATE);




	SELECT OrderMonth,COUNT([SALES]) AS QuantitySold
	FROM 
    [akshitadb].[dbo].[TASK 6]
	GROUP BY OrderMonth
	ORDER BY OrderMonth;

	SELECT
	      SUM([SALES]) 
	FROM
          [akshitadb].[dbo].[TASK 6]

	SELECT 
        OrderMonth,
    COUNT(DISTINCT ORDERNUMBER) AS OrderVolume
    FROM 
        [akshitadb].[dbo].[TASK 6]
    GROUP BY 
        OrderMonth
    ORDER BY 
        OrderMonth;


		SELECT *
      FROM [akshitadb].[dbo].[TASK 6]
     ORDER BY SALES DESC;


       
	 SELECT *
    FROM [akshitadb].[dbo].[TASK 6]
       ORDER BY OrderMonth ASC, SALES DESC;


	   SELECT *
    FROM [akshitadb].[dbo].[TASK 6]
    WHERE ORDERDATE BETWEEN '2004-01-01' AND '2004-03-31';

  

