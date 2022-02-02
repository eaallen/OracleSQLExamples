@analyticFunction

/*
Considering only mobile food preparers, make a list of inspections.  
Show the 
    ID, 
    date, 
    and type of the inspection, 
    the establishment's DBA name, 
    and license number 
    as well as the fine assessed on each inspection. 
Also, include 
    a column name "total_fine" that shows the total fine assessed to each establishment across all inspections.  

Remember that two different establishments may have the same name.  
It's the license number that uniquely identifies an establishment.  

Be sure to use what we have learned about Analytic Functions in composing your solution.

*/

SELECT
    i.inspection_id
    ,i.inspection_date
    ,i.inspection_type
    ,i.dba_name
    ,i.license_no
    ,i.fine
    ,sum(i.fine) over (partition by i.license_no) as total_fine
FROM 
    inspection_summary i
WHERE
    facility_type = 'Mobile Food Preparer'
;

exit