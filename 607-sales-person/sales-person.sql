/* Write your T-SQL query statement below */
-- select s.name from 
-- (select * 
-- from Orders o inner join Company c
-- on o.com_id = c.com_id
-- where c.name != 'RED') as a join SalesPerson s
-- on a.sales_id = s.sales_id
select a.name from 
(select o.sales_id from 
Orders o left join Company c on o.com_id=c.com_id
where c.name ='RED') as s right join SalesPerson a on s.sales_id=a.sales_id
where s.sales_id is null