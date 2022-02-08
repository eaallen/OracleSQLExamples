@analyticFunction

/*
To the prior query, add a column called "trailing_ten_average" 
that shows Cecelia's running average of the current fine and 
the past nine fines assessed.  Round the average to the nearest dollar.
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
    ,ROUND(avg(fine) over(order by inspection_date rows between 9 preceding and current row),0) as trailing_ten_average
FROM 
    inspection_summary
WHERE
    employee = 'Cecelia Glenn'
ORDER BY inspection_date
;

exit