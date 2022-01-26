@hwConfig
/*
List without duplicates the cities and states of customers who have purchased boots in January. 
Sort by state. Only show cities and states.
*/
SELECT  DISTINCT
  c.city
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
  p.category = 'boots'
AND 
  to_char(s.saleDate, 'mm') = '01' -- Jan.
;

exit