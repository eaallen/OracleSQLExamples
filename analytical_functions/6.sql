@analyticFunction

/*
To the prior query, add a column showing the cumulative fines 
assessed by Cecelia.  Call this column "employee_running_total"
*/

SELECT
    inspection_id
    ,inspection_date
    ,facility_type
    ,dba_name
    ,fine
    ,sum (fine) over(partition by facility_type) as facility_type_total
    ,risk_level
    ,sum(fine) over(partition by risk_level) risk_level_total
    ,sum(fine) over(order by inspection_date rows between unbounded preceding and current row) as employee_running_total
FROM 
    inspection_summary
WHERE
    employee = 'Cecelia Glenn'
ORDER BY inspection_date
;

exit