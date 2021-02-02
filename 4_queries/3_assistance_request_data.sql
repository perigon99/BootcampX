SELECT teachers.name as "teacher", students.name as "student", assignments.name as "assignement", (completed_at - started_at) as "duration" 
FROM assistance_requests
LEFT JOIN teachers ON teacher_id = teachers.id
LEFT JOIN students ON student_id = students.id
RIGHT JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;