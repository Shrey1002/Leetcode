-- Write your PostgreSQL query statement below
select name, balance
from (select users.name, sum(transactions.amount) as balance
from users inner join transactions 
on (users.account = transactions.account)
group by users.name)
where balance>10000 

