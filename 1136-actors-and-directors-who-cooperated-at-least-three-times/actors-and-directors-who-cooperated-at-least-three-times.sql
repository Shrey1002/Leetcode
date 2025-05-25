/* Write your T-SQL query statement below */
select a.actor_id, a.director_id
from (
select count(*) as count, actor_id, director_id
from ActorDirector
group by actor_id, director_id) as a
where a.count >= 3