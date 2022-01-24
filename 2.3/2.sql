@hwConfig

/*

List the information contained in the sale table concerning the sales of slippers and the sales of 
casual shoes (categories) in the month of January. (Categories are not capitalized in the database.) 
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
  p.category IN ('slippers', 'casual shoes')
AND
  to_char(s.saleDate, 'mm') = 1  -- the month of Jan.
;

exit