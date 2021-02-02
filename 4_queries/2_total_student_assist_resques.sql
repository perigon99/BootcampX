SELECT count(assistance_requests) as "total_assistances", name
from assistance_requests
LEFT JOIN students ON student_id = studends.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;