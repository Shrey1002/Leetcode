-- Write your PostgreSQL query statement below
select id,
sum(case when month = 'Jan' then revenue else null end) as Jan_revenue,
sum(case when month = 'Feb' then revenue else null end) as Feb_revenue,
sum(case when month = 'Mar' then revenue else null end) as Mar_revenue,
sum(case when month = 'Apr' then revenue else null end) as Apr_revenue,
sum(case when month = 'May' then revenue else null end) as May_revenue,
sum(case when month = 'Jun' then revenue else null end) as Jun_revenue,
sum(case when month = 'Jul' then revenue else null end) as Jul_revenue,
sum(case when month = 'Aug' then revenue else null end) as Aug_revenue,
sum(case when month = 'Sep' then revenue else null end) as Sep_revenue,
sum(case when month = 'Oct' then revenue else null end) as Oct_revenue,
sum(case when month = 'Nov' then revenue else null end) as Nov_revenue,
sum(case when month = 'Dec' then revenue else null end) as Dec_revenue
from department
group by id