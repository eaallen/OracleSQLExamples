@hwConfig
/*

What are the categories of shoes from Puma and in what colors? Sort them by color. Only show categories and colors.

*/
SELECT DISTINCT
  p.color
  ,p.category
FROM   
  product p
JOIN
  manufacturer m
ON 
  m.manufacturerID = p.manufacturerID
WHERE
  m.manufacturerName = 'Puma'
ORDER BY 
  p.color
;

exit