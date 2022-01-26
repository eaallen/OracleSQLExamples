@hwConfig
/*
List names of manufacurers whose products have been purchased during February.
*/
SELECT DISTINCT
  m.manufacturerName
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
WHERE 
  to_char(s.saleDate, 'mm') = '02'
;

exit