@hwConfig
/*
List Names and States for each Customer who has bought products 
with list prices between $130 and $150 inclusive. 
Show customer first name, last name and states.

*/
SELECT
  c.firstName
  ,c.lastName
  ,c.state
FROM   
  sale s
JOIN
  customer c
ON 
  c.customerID = s.customerID
JOIN 
  product p
ON
  p.productID = s.productID
WHERE 
  p.price <= 150
AND 
  p.price >= 130
;

exit