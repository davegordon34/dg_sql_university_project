USE dg_bottega_university_schema;

-- Average grade given by professor
SELECT p.professor_name AS "Professor", AVG(g.grade_final) as "Average Grade"
FROM courses c
	JOIN professors p
	ON  c.course_professor_id = p.professor_id
	JOIN grades g
	ON c.course_id = g.grade_course_id
GROUP BY p.professor_name;

-- Top Grades for each student
SELECT s.student_id AS "Student", MAX(g.grade_final) AS "Top Grade"
FROM grades g
	JOIN students s
	ON g.grade_student_id = s.student_id
	GROUP BY s.student_id;

-- grouping students by the courses they are in
SELECT c.course_name AS "Course", s.student_name AS "Student"
FROM grades g
	JOIN students s ON s.student_id = g.grade_student_id
	JOIN courses c ON  c.course_id = g.grade_course_id 
	GROUP BY g.grade_course_id, s.student_name
    ORDER By c.course_id DESC;

-- find the average final grade by the most challenging course
SELECT c.course_name AS "Course", AVG(g.grade_final) as "Average Final Grade"
FROM grades g
	JOIN courses c
	ON c.course_id = g.grade_course_id
	GROUP BY c.course_id
	ORDER BY AVG(g.grade_final) ASC;

-- teachers and student have in common
SELECT student_name AS "Student", professor_name AS "Professor", COUNT(*) AS classes_in_common
FROM grades g
	JOIN students s
	ON g.grade_student_id = s.student_id
	JOIN courses c
	ON g.grade_course_id = c.course_id
	JOIN professors p
	ON c.course_professor_id = p.professor_id
	GROUP BY student_name, professor_name
	ORDER BY classes_in_common DESC
	LIMIT 1;


