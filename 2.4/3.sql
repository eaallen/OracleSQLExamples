@hwConfig
/*
List the names of products purchased by customers from Montana, Utah, and Wyoming. Only show product names.
*/
SELECT DISTINCT
  p.productName
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
  c.state in ('MT', 'UT', 'WY')
;

exit