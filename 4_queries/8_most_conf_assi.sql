SELECT assignments.id as "id",  assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) as total_requests
from assignments
LEFT JOIN assistance_requests ON assignment_id = assignments.id
group by assignments.id
order by total_requests desc