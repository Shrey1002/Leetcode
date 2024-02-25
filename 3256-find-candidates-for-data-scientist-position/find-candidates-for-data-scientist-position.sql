-- Write your PostgreSQL query statement below
select candidate_id
from (select candidate_id, count(*) as c from candidates where skill in 
('Python', 'Tableau', 'PostgreSQL') group by candidate_id)
where c = 3
order by candidate_id
