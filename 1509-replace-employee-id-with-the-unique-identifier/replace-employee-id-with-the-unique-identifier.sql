/* Write your T-SQL query statement below */
select u.unique_id, e.name  from Employees as e left outer join EmployeeUNI as u on e.id = u.id 

-- u.unique_id, e.name