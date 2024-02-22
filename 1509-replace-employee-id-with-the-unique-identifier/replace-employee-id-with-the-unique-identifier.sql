-- Write your PostgreSQL query statement below
select 
CASE 
        WHEN eu.unique_id IS NULL THEN NULL 
        ELSE eu.unique_id 
    END AS unique_id,
    e.name
from Employees as e left outer join EmployeeUNI as eu
on e.id = eu.id