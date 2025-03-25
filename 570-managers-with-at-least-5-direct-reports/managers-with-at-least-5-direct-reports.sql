/* Write your T-SQL query statement below */
select e1.name from Employee as e1 
inner join Employee as e2 on e1.id=e2.managerid
group by e1.id, e1.name
having count(e1.id)>=5
-- where count(e1.id)>=5
--  on e1.id=e2.id
