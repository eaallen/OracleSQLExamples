@analyticFunction

/*
Show a list of inspections for the employee named "Cecelia Glenn." 
Show the 
    inspection ID and 
    date, as well as the 
    establishment's DBA name and 
    facility type.  
Also, include the 
    fine assessed on each inspection and a 
    column named "facility_type_total" that shows the 
    total amount assessed by Cecelia on all establishment of the facility 
type shown on the current line.  To be clear, each row that has a facility 
type of "Restaurant" should have the same number in the facility_type_total 
column.  Order the results chronologically. Be sure to use what we have 
learned about Analytic Functions in composing your solution.
*/

SELECT
    inspection_id
    ,inspection_date
    ,facility_type
    ,dba_name
    ,fine
    ,sum (fine) over(partition by facility_type) as facility_type_total
FROM 
    inspection_summary
WHERE
    employee = 'Cecelia Glenn'
ORDER BY inspection_date
;

exit