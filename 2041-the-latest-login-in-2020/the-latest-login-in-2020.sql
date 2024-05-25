# Write your MySQL query statement below
select l.user_id, max(time_stamp) as last_stamp
from(
select user_id, time_stamp
from logins as l
where year(time_stamp) = '2020'
-- group by user_id
order by date(time_stamp) desc, time(time_stamp) desc) as l
group by l.user_id;