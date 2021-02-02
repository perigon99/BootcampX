SELECT day, chapter, count(assistance_requests) as total_requests, duration
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY day
