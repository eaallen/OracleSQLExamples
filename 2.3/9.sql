@hwConfig
/*

What are the first and last names of customers living in California who made purchases in January 2015, 
and what was the quantity for each of their purchases? (Sates appear in the database as standard abbreviations, 
e.g. Alaska appears as “AK”.) Only show customer first name, last name, and quantity.

*/
SELECT DISTINCT
  c.firstName
  ,c.lastName
  ,s.quantity
FROM   
  Customer c
JOIN
  Sale s
ON 
  s.customerID = c.customerID
WHERE
  c.state = 'CA'
AND 
  to_char(s.saleDate, 'mmyyyy') = '012015' -- January 2015
;

exit