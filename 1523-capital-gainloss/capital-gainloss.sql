with buy_pric as
(select stock_name, sum(price) as buy_price
from stocks
where operation = 'Buy'
group by stock_name),

sell_pric as 
(select stock_name, sum(price) as sell_price
from stocks
where operation = 'Sell'
group by stock_name)

select b.stock_name, ( s.sell_price-b.buy_price ) as capital_gain_loss
FROM buy_pric b
LEFT JOIN sell_pric s ON b.stock_name = s.stock_name;


