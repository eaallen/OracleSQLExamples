@hwConfig
/*

What categories of shoes were sold in January 2014?

*/
SELECT DISTINCT
  p.category
FROM   
  Product p
JOIN
  Sale s
ON 
  s.productID = p.productID
WHERE
  to_char(s.saleDate, 'mmyyyy') = '012014' -- January 2014
;

exit