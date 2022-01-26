@hwConfig
/*
List products (names only) with their categories and manufacturer name of sandals, 
sneakers, and casual shoes which are manufactured by 'Buyers Picks' or by 'Radii Footwear'.

*/
SELECT  
  p.productName
  ,p.category
  ,m.manufacturerName
FROM   
  manufacturer m
JOIN
  product p
ON 
  p.manufacturerID = m.manufacturerID
WHERE 
  p.category in ('sandals', 'sneakers', 'casual shoes')
AND 
  m.manufacturerName in ('Buyers Picks', 'Radii Footwear')
;

exit