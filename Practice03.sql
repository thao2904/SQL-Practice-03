--Practice01:
SELECT Name from STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3 ), ID
--Practice02:
SELECT user_id,
CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT(name, length(name)-1))) as name
FROM Users
ORDER BY user_id;
--Practice03:

