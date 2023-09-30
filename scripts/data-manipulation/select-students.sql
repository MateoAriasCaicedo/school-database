-- Select students with a given name or last name.
SELECT ID, first_name, last_name
FROM Student
WHERE first_name = 'Rochell'
   OR last_name = 'Askam'
ORDER BY first_name, last_name;