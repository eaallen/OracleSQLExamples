@hwConfig
/*
List the information in the sales table concerning green sneakers. 
Use the first letter of each table name as alias names. 
(Colors are capitalized while categories are not.) 
Note: Your answer should dynamically include all current columns and any future changes to columns.

*/
SELECT  
  s.*
FROM   
  sale s
JOIN
  product p
ON 
  p.productid = s.productid
WHERE 
  p.category = 'sneakers'
AND
  p.color = 'Green'
;

exit