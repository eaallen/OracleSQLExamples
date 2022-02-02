@analyticFunction

/*
To the prior query, add a column called "running_fine" that shows the cumulative 
fine assessed to each establishment chronologically.  For a given establishment, 
the first row displayed should have the same value in "fine" and in "running_fine."  
Also for a given establishment, the last row displayed should have the same value 
for "total_fine" and "running_fine."
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
FROM 
    inspection_summary
WHERE
    facility_type = 'Mobile Food Preparer'
ORDER BY license_no, inspection_date
;

exit