@hwConfig
/*
List the information in the sales table, plus the productname, category, 
and color for sales of green sneakers and green sandals. 
Use first letter aliases.Note: Your answer should dynamically 
include all current columns and any future changes to columns in the sales table.

*/
SELECT  
  s.*
  ,p.productName
  ,p.category
  ,p.color
FROM   
  sale s
JOIN
  product p
ON 
  p.productid = s.productid
WHERE 
  p.category IN ('sneakers', 'sandals')
AND
  p.color = 'Green'
;

exit