
CREATE TABLE students 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20)
);

CREATE TABLE papers 
(
    title VARCHAR(30),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) 
        REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


//exercice 1

SELECT first_name, title, grade 
FROM students
    JOIN papers
     WHERE students.id = papers.student_id
ORDER BY grade DESC;
     

// 2
SELECT first_name, title, grade 
FROM students
LEFT JOIN papers
     ON students.id = papers.student_id;     
     
//3
SELECT first_name,
        IFNULL(title,'Missing'),
        IFNULL(grade, 0)
FROM students
LEFT JOIN papers
     ON students.id = papers.student_id;     

//4
SELECT first_name, AVG(grade)
FROM students
   LEFT JOIN papers
     ON students.id = papers.student_id
GROUP BY students.id;
ORDER BY grade DESC;



