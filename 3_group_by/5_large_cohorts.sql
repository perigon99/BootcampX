select cohorts.name as "cohort_name", count(students.*) as "student_count"
from cohorts
left join students on cohorts.id = cohort_id 
group by cohorts.name
order by student_count;