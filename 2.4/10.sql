@hwConfig
/*
Which products made by Adidas have been purchased by customers in California in August? Only show product names.
*/
SELECT DISTINCT
  p.productName
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
  c.state = 'CA'
AND
  to_char(s.saleDate, 'mm') = '08' -- AUG
;

exit