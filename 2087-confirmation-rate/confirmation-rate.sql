/* Write your T-SQL query statement below */
-- select user_id, confirmation_rate

select s.user_id,
round(
    avg(case when c.action = 'confirmed' then 1.00 else 0 end),2
    )
as confirmation_rate
  from Signups as s left join Confirmations as c on s.user_id=c.user_id
group by s.user_id