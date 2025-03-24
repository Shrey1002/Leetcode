/* Write your T-SQL query statement below */
-- select *
-- t.student_id, s.student_name, t.attended_exams, t.subject_name
-- from(
-- select student_id, count(*) as attended_exams, subject_name
-- from Examinations 
-- group by student_id, subject_name
-- ) as t full outer join Students as s on t.student_id=s.student_id
select 
t.student_id, t.student_name, t.subject_name, iif(s.attended_exams is null, 0, s.attended_exams) as attended_exams
 from 
(
    select * from Students cross join Subjects
) as t left join 
(
select student_id, count(*) as attended_exams, subject_name
from Examinations 
group by student_id, subject_name
) as s on t.student_id=s.student_id and t.subject_name=s.subject_name
order by t.student_id, t.subject_name