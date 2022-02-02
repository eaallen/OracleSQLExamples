@analyticFunction

/*
To the prior query, add a column named "mobile_total" that shows the total of fines assessed to all mobile food preparers. 
*/

SELECT
    inspection_id
    ,inspection_date
    ,inspection_type
    ,dba_name
    ,license_no
    ,fine
    ,sum(fine) over (partition by license_no) as total_fine
    ,sum(fine) over (partition by license_no order by inspection_date rows between unbounded preceding and current row) as running_fine
    ,sum (fine) over() as mobile_total
FROM 
    inspection_summary
WHERE
    facility_type = 'Mobile Food Preparer'
ORDER BY license_no, inspection_date
;

exit