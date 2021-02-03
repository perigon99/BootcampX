const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  password: 'myPassword',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];

// Store all potentially malicious values in an array. 
const values = [`%${cohortName}%`];

const teacherQuery = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teacher;`

pool.query(teacherQuery,values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});