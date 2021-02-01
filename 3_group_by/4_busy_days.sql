select day, count(*) as "total_assignement"
from assignments
group by day 
having count(*) >= 10
order by day;
