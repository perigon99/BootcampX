select day, count(name) as "total_assignement"
from assignments
group by day 
order by day;
