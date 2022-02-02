@analyticFunction

/*
To the prior query, add a column named grand_total that shows the total fees assessed for the month.
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
FROM 
    inspection_summary
WHERE
    EXTRACT(MONTH from inspection_date) = 12 
AND
    EXTRACT (YEAR from inspection_date) = 2012
ORDER BY inspection_date, employee, dba_name
;

exit