SELECT pc.ProductCategoryID
	 , pc.Name

FROM SalesLT.ProductCategory AS pc

--data수 295
--productCategory기준으로 OUTER JOIN하면 299 NULL 4
SELECT pd.Name, pd.ProductNumber
     , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.Size, pd.Weight
	 , pc.Name AS category_Name

FROM SalesLT.Product AS pd

RIGHT OUTER JOIN SalesLT.ProductCategory AS pc
  ON pd.ProductCategoryID = pc.ProductCategoryID

  --1
  SELECT CONCAT(c.Title,' ',c.FirstName,' ',c.LastName) AS FullName
       , CompanyName, c.EmailAddress, c.Phone
  FROM SalesLT.Customer AS c
  --2
  SELECT ad.PostalCode
        ,CONCAT(ad.AddressLine1,' ',ad.AddressLine2,', ', ad.City,', ',ad.StateProvince) AS addr
		,ad.CountryRegion AS Country
  FROM SalesLT.Address AS ad
  --3
  SELECT ca.CustomerID, ca.AddressID, ca.AddressType
  FROM SalesLT.CustomerAddress AS ca


  --최종
  SELECT c.CustomerID
       , CONCAT(c.Title,' ',c.FirstName,' ',c.LastName) AS FullName
	   , c.CustomerID, c.EmailAddress, c.Phone
	   , ca.CustomerID, ca.AddressID, ca.AddressType
	   , ad.PostalCode
       , CONCAT(ad.AddressLine1,' ',ad.AddressLine2,', ', ad.City,', ',ad.StateProvince) AS addr
	   ,ad.CountryRegion AS Country
  FROM SalesLT.Customer AS c
  LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
  ON c.CustomerID=ca.CustomerID
  LEFT OUTER JOIN SalesLT.Address AS ad
  ON ad.AddressID=ca.CustomerID