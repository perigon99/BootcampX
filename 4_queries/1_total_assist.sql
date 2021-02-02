SELECT count(assistance_requests) as "total_assistances", name
from teachers
LEFT JOIN assistance_requests ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;