@hwConfig
/*

Who are all the customers in Washington who made purchases in 2015? Only show customer first and last names.

*/
SELECT DISTINCT
  c.firstName
  ,c.lastName
  ,c.customerID
FROM   
  Customer c
JOIN
  Sale s
ON 
  s.customerID = c.customerID
WHERE
  c.state = 'WA'
AND 
  to_char(s.saleDate, 'yyyy') = '2015' -- the year 2015
;

exit