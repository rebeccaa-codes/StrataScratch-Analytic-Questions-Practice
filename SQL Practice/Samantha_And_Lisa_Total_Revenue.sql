select Sum(b.revenue) from
(select sales_revenue AS revenue
from sales_performance 
where salesperson like 'Samantha' or salesperson like 'Lisa') AS b;
