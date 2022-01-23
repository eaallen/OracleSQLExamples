@hwConfig
/*
List the information contained in the sale table concerning the sales of 
slippers (whose category is slippers). (Categories are not capitalized in 
the database.) Note: Your answer should dynamically include all current columns 
and any future changes to columns.

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
  p.category = 'slippers'
;

exit