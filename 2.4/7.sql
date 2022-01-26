@hwConfig
/*
List all the July sales of white sneakers (color='White') made by Nike. 
Use alias names. (Colors are capitalized in the database.) 
Show only sales information, but show all sales columns.
*/
SELECT
  s.*
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
  to_char(s.saleDate, 'mm') = '07' -- JULY
AND
  p.color = 'White'
AND
  m.manufacturerName = 'Nike'
;

exit