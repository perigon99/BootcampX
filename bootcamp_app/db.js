const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: 'myPassword',
  host: 'localhost',
  database: 'bootcampx'
});