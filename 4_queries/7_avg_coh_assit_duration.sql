select avg(total_duration)
from 
(SELECT sum(completed_at - started_at) as total_duration
FROM assistance_requests
join students on students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
order by total_duration) as "subquery"
