-- Use the join_example_db. Select all the records from both the users and roles tables.

select * 
from users
join roles on users.role_id = roles.id;

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

select * 
from users
left join roles on users.role_id = roles.id;

select * 
from users
right join roles on users.role_id = roles.id;

-- Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

select role_id, count(*)
from users
join roles on users.role_id = roles.id
group by role_id;

