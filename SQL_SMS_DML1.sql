
-- ============================================================
-- SAMPLE STUDENTS
-- ============================================================

INSERT INTO students
    (student_name, age, email, phone, city, school_id)
VALUES
    (
        'Rahul Sharma',
        20,
        'rahul@gmail.com',
        '9876543210',
        'Hyderabad',
        1
    ),
    (
        'Priya Reddy',
        19,
        'priya@gmail.com',
        '9876543211',
        'Hyderabad',
        1
    ),
    (
        'Arjun Kumar',
        21,
        'arjun@gmail.com',
        '9876543212',
        'Hyderabad',
        2
    ),
    (
        'Sneha Rao',
        20,
        'sneha@gmail.com',
        '9876543213',
        'Bangalore',
        3
    ),
    (
        'Vikram Singh',
        22,
        'vikram@gmail.com',
        '9876543214',
        'Chennai',
        4
    ),
    (
        'Ananya Patel',
        19,
        'ananya@gmail.com',
        '9876543215',
        'Hyderabad',
        2
    );
    
    
    
    -- ============================================================
-- SAMPLE SUBJECTS
-- ============================================================

INSERT INTO subjects
    (subject_name, description)
VALUES
    ('Python', 'Python Programming'),
    ('Java', 'Java Programming'),
    ('SQL', 'Database and SQL'),
    ('Mathematics', 'Mathematics'),
    ('Physics', 'Physics'),
    ('Machine Learning', 'Machine Learning'),
    ('Data Science', 'Data Science'),
    ('Cloud Computing', 'Cloud Technologies');
    
    
-- ============================================================
-- SAMPLE SKILLS
-- ============================================================

INSERT INTO skills
    (skill_name, category)
VALUES
    ('Python', 'Programming'),
    ('Java', 'Programming'),
    ('SQL', 'Database'),
    ('Git', 'DevOps'),
    ('Docker', 'DevOps'),
    ('AWS', 'Cloud'),
    ('GCP', 'Cloud'),
    ('Azure', 'Cloud'),
    ('Machine Learning', 'AI'),
    ('Communication', 'Soft Skill'),
    ('Leadership', 'Soft Skill'),
    ('Problem Solving', 'Soft Skill');
    
    
-- ============================================================
-- STUDENT SUBJECT MAPPING
-- ============================================================

INSERT INTO student_subjects
    (student_id, subject_id, grade)
VALUES

-- Rahul
(1, 1, 'A'),
(1, 3, 'A+'),
(1, 4, 'B+'),
(1, 6, 'A'),

-- Priya
(2, 1, 'A+'),
(2, 3, 'A'),
(2, 7, 'A'),

-- Arjun
(3, 2, 'A'),
(3, 3, 'A+'),
(3, 8, 'A'),

-- Sneha
(4, 1, 'A'),
(4, 5, 'B+'),
(4, 7, 'A'),

-- Vikram
(5, 2, 'A+'),
(5, 4, 'A'),
(5, 8, 'A'),

-- Ananya
(6, 1, 'A+'),
(6, 3, 'A+'),
(6, 6, 'A');


-- ============================================================
-- STUDENT SKILL MAPPING
-- ============================================================

INSERT INTO student_skills
    (student_id, skill_id, proficiency)
VALUES

-- Rahul
(1, 1, 'Advanced'),
(1, 3, 'Advanced'),
(1, 4, 'Intermediate'),
(1, 9, 'Intermediate'),
(1, 10, 'Advanced'),

-- Priya
(2, 1, 'Advanced'),
(2, 3, 'Advanced'),
(2, 7, 'Intermediate'),
(2, 10, 'Advanced'),

-- Arjun
(3, 2, 'Advanced'),
(3, 3, 'Advanced'),
(3, 5, 'Intermediate'),
(3, 8, 'Intermediate'),

-- Sneha
(4, 1, 'Advanced'),
(4, 7, 'Advanced'),
(4, 11, 'Intermediate'),

-- Vikram
(5, 2, 'Advanced'),
(5, 6, 'Intermediate'),
(5, 12, 'Advanced'),

-- Ananya
(6, 1, 'Advanced'),
(6, 3, 'Advanced'),
(6, 9, 'Advanced'),
(6, 10, 'Advanced');


