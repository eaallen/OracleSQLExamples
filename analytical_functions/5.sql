@analyticFunction

/*
To the prior query, add a column that shows the risk level of 
each establishment and a column named "risk_level_total" that 
shows the total of the fines assessed to the establishments 
of a given risk level.
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
FROM 
    inspection_summary
WHERE
    employee = 'Cecelia Glenn'
ORDER BY inspection_date
;

exit