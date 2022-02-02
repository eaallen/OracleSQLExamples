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
        ,e.dba_name
        ,e.license_no 
        ,v.fine
        -- ,v.point_id
        ,sum(v.fine) over(partition by i.inspection_id) as inspection_fine
        -- , sum(inspection_fine) over (partition by e.license_no) as total_fine_for_inspections
    FROM
        Inspection i
    JOIN
        Establishment e
    ON
        i.license_no = e.license_no
    JOIN
        violation v 
    ON  
        i.inspection_id = v.inspection_id
    WHERE   
        e.facility_type = 'Mobile Food Preparer'

exit