@hwConfig
/*

What are the names of manufacturers of heels costing 
$50 or more? (Use aliases.) Only show manufacturer names.

*/
SELECT DISTINCT
  m.manufacturerName 
FROM   
  product p
JOIN
  manufacturer m
ON 
  m.manufacturerID = p.manufacturerID
WHERE
  category = 'heels'
AND
  p.price >= 50
;

exit