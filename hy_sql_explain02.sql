EXPLAIN ANALYZE
SELECT AVG(s.mark) as mark,
       s.faculty_name
FROM (SELECT f.name as faculty_name,
             m.mark
      FROM mark m
      INNER JOIN students s on s.id = m.student_id
      INNER JOIN (SELECT id, name FROM faculty_name) f ON f.id = s.faculty_id) as s
WHERE s.faculty_name = 'Ravenclaw'
GROUP BY s.faculty_name;

EXPLAIN ANALYZE
SELECT f.name      as faculty_name,
       AVG(m.mark) as mark
FROM mark m
INNER JOIN students s on s.id = m.student_id
INNER JOIN faculty_name f ON f.id = s.faculty_id and f.name = 'Ravenclaw'
GROUP BY faculty_name;

