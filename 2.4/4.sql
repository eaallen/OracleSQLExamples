@hwConfig
/*
List all information about customers who have 
bought products whose list price is over $150. 
Use aliases on table names. Only show customer information.

*/
SELECT
  c.*
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
  p.price > 150
;

exit