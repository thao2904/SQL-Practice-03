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
SELECT manufacturer,
'$' ||ROUND((SUM(total_sales)/ 1000000 ),0)||' million' AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales)DESC, manufacturer
--Practice04:
SELECT EXTRACT(month from submit_date) AS mth,
product_id,
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY EXTRACT(month from submit_date), product_id
ORDER BY mth, product_id;
--Practice05:
SELECT sender_id, 
COUNT(message_id) as message_count
FROM messages
WHERE EXTRACT(month from sent_date) = '08' 
and EXTRACT(year from sent_date) = '2022'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
--Practice06:
SELECT tweet_id from Tweets
WHERE LENGTH(content) > 15
--Practice08:
SELECT COUNT(id) as employee_number from employees
WHERE EXTRACT(month from joining_date) BETWEEN '01' AND '07' 
AND EXTRACT (year from joining_date) = 2022;
--Practice09:
select POSITION('a' IN first_name) as name
from worker
WHERE first_name = 'Amitah'
--Practice10:
select id, SUBSTRING(title from LENGTH(winery) + 2 FOR 4) as year
from winemag_p2;





























