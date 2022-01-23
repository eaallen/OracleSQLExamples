@hwConfig
/*

List in alphabetical order the states of customers who have purchases in January of 2015. 
Use first letter of table names for aliases. Only show states.

*/
SELECT DISTINCT
  c.state
FROM   
  sale s
JOIN
  customer c
ON 
  c.customerID = s.customerID
WHERE
  to_char(s.saleDate, 'mmyyyy') = '012015'
ORDER BY
  c.state
;

exit