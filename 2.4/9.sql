@hwConfig
/*
List the states of manufacturers who have made sneakers purchased 
by customers living in Kansas. Use alias names. Only show states.
*/
SELECT
  m.state
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
  c.state = 'KS'
AND
  p.category = 'sneakers'
;

exit