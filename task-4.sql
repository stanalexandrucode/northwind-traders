select country, count(*) AS number_of_customers
from customers
group by country
order by number_of_customers desc limit 5;