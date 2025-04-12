/* Write your T-SQL query statement below */
select * from Cinema as c
where c.id % 2 != 0 and c.description != 'boring' 
order by rating desc