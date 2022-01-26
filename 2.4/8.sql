@hwConfig
/*
Give an albphabetical list of customers who have purchased black shoes made by Keds. 
Sort on full name, with last name being the primary sort. 
(Colors are capitalized in the database.) 
Only show customer names, last name then first name.
*/
SELECT DISTINCT
  c.lastName
  ,c.firstName
FROM   
  sale s
JOIN 
  product p
ON
  p.productID = s.productID
JOIN
  manufacturer m
ON 
  m.manufacturerID = p.manufacturerID 
JOIN
  customer c
ON
  c.customerID = s.customerID -- the customer who purchased 
WHERE
  p.color = 'Black'
AND
  m.manufacturerName = 'Keds'
ORDER BY
  c.lastName ASC
  ,c.firstName ASC
;

exit