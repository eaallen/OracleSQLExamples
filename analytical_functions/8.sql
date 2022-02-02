@analyticFunction

/*
For December of 2012, show the inspection_id, inspection_date, employee, dba_name, 
facility_type, fine.  Also, include a column named "employee_running_total" that 
shows the month's running total for each employee.  Sort the results chronologically, 
then by employee name, then by establishment DBA name.  Be sure that the 
"employee_running_total" column increases for each row that has the same employee 
as the prior row. Be sure to use what we have learned about Analytic Functions 
in composing your solution.
*/

SELECT
    inspection_id
    ,inspection_date
    ,employee
    ,dba_name
    ,facility_type
    ,fine
    ,sum(fine) over(partition by employee order by inspection_date rows between unbounded preceding and current row) as employee_running_total
FROM 
    inspection_summary
WHERE
    EXTRACT(MONTH from inspection_date) = 12 -- AUG
AND
    EXTRACT (YEAR from inspection_date) = 2012
ORDER BY inspection_date, employee, dba_name
;

exit