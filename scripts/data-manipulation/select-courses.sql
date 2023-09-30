-- Select courses with the given set of names.
SELECT ID, name, description
FROM Course
WHERE name = 'Biology'
   OR name = 'Art'
ORDER BY name;