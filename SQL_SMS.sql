-- ============================================================
-- STUDENT MANAGEMENT SYSTEM
-- Database: PostgreSQL
-- ============================================================


-- ============================================================
-- 1. DROP EXISTING TABLES
-- ============================================================

DROP TABLE IF EXISTS student_skills CASCADE;
DROP TABLE IF EXISTS student_subjects CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS subjects CASCADE;
DROP TABLE IF EXISTS skills CASCADE;
DROP TABLE IF EXISTS schools CASCADE;


-- ============================================================
-- 2. SCHOOL TABLE
-- ============================================================

CREATE TABLE schools (
    school_id       SERIAL PRIMARY KEY,
    school_name     VARCHAR(100) NOT NULL,
    city            VARCHAR(100) NOT NULL,
    address         VARCHAR(255),
    phone           VARCHAR(20),
    email           VARCHAR(150),
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT uk_school_name_city
        UNIQUE (school_name, city)
);


-- ============================================================
-- 3. STUDENT TABLE
-- ============================================================

CREATE TABLE students (
    student_id      SERIAL PRIMARY KEY,
    student_name    VARCHAR(100) NOT NULL,
    age             INTEGER NOT NULL,
    email           VARCHAR(150) NOT NULL,
    phone           VARCHAR(20),
    city            VARCHAR(100),
    school_id       INTEGER NOT NULL,

    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_student_school
        FOREIGN KEY (school_id)
        REFERENCES schools(school_id)
        ON DELETE RESTRICT,

    CONSTRAINT chk_student_age
        CHECK (age BETWEEN 3 AND 100),

    CONSTRAINT uk_student_email
        UNIQUE (email)
);


-- ============================================================
-- 4. SUBJECT TABLE
-- ============================================================

CREATE TABLE subjects (
    subject_id      SERIAL PRIMARY KEY,
    subject_name    VARCHAR(100) NOT NULL UNIQUE,
    description     VARCHAR(255)
);


-- ============================================================
-- 5. SKILL TABLE
-- ============================================================

CREATE TABLE skills (
    skill_id        SERIAL PRIMARY KEY,
    skill_name      VARCHAR(100) NOT NULL UNIQUE,
    category        VARCHAR(100)
);


-- ============================================================
-- 6. STUDENT-SUBJECT
--    Many-to-Many relationship
-- ============================================================

CREATE TABLE student_subjects (
    student_id      INTEGER NOT NULL,
    subject_id      INTEGER NOT NULL,

    enrolled_date   DATE DEFAULT CURRENT_DATE,
    grade           VARCHAR(5),

    PRIMARY KEY (student_id, subject_id),

    CONSTRAINT fk_student_subject_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_student_subject_subject
        FOREIGN KEY (subject_id)
        REFERENCES subjects(subject_id)
        ON DELETE CASCADE
);


-- ============================================================
-- 7. STUDENT-SKILL
--    Many-to-Many relationship
-- ============================================================

CREATE TABLE student_skills (
    student_id      INTEGER NOT NULL,
    skill_id        INTEGER NOT NULL,

    proficiency     VARCHAR(30),

    PRIMARY KEY (student_id, skill_id),

    CONSTRAINT fk_student_skill_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_student_skill_skill
        FOREIGN KEY (skill_id)
        REFERENCES skills(skill_id)
        ON DELETE CASCADE
);


-- ============================================================
-- 8. INDEXES
-- ============================================================

CREATE INDEX idx_students_school
    ON students(school_id);

CREATE INDEX idx_students_name
    ON students(student_name);

CREATE INDEX idx_students_city
    ON students(city);

CREATE INDEX idx_student_subjects_subject
    ON student_subjects(subject_id);

CREATE INDEX idx_student_skills_skill
    ON student_skills(skill_id);