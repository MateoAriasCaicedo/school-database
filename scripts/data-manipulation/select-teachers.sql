-- Select teachers with a given id or speciality.
SELECT ID, name, speciality
FROM Teacher
WHERE ID = 2
   OR speciality = 'Biology'
ORDER BY ID;