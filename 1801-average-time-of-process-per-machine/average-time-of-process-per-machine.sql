/* Write your T-SQL query statement below */
-- select machine_id, process_id,  sum(timestamp)
-- from Activity
-- group by machine_id, process_id 
-- order by machine_id

-- select a1.machine_id, (a1.timestamp- a2.timestamp) as diff from Activity as a1 cross join  Activity as a2 group by a1.machine_id
select machine_id, round(avg(processing_time),3) as processing_time
from
(select a.machine_id, round(sum(case when a.activity_type='start' then -1*a.[timestamp] else a.[timestamp] end),3) as processing_time,a.process_id
from Activity as a
group by a.machine_id, process_id) as t
group by machine_id
