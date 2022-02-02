@analyticFunction

/*
To the prior query, add a column named "facility_type_total" that shows the 
total fees assessed to facilities of the type on the row during the month.
*/

SELECT
    inspection_id
    ,inspection_date
    ,employee
    ,dba_name
    ,facility_type
    ,fine
    ,sum(fine) over(partition by employee order by inspection_date rows between unbounded preceding and current row) as employee_running_total
    ,sum(fine) over() as grand_total
    ,sum(fine) over(partition by facility_type) as facility_type_total
FROM 
    inspection_summary
WHERE
    EXTRACT(MONTH from inspection_date) = 12 
AND
    EXTRACT (YEAR from inspection_date) = 2012
ORDER BY inspection_date, employee, dba_name
;

exit