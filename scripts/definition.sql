-- Database creation.
CREATE DATABASE schoolDB;
USE schoolDB;

-- Tables definition.
CREATE TABLE Student
(
    ID         int PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name  varchar(255) NOT NULL,
    birth_date date         NOT NULL
);

CREATE TABLE Teacher
(
    ID              int PRIMARY KEY,
    name            varchar(255) NOT NULL,
    speciality      varchar(255) DEFAULT 'No speciality',
    engagement_date date         NOT NULL,
    wage            float
);

CREATE TABLE Course
(
    ID          int PRIMARY KEY,
    name        varchar(255) NOT NULL UNIQUE,
    description varchar(500) DEFAULT 'No description',
    start_date  date,
    duration    int
);

CREATE TABLE Inscription
(
    ID               int PRIMARY KEY,
    student_ID       int,
    course_ID        int,
    inscription_date date NOT NULL,
    final_grade      float
);

CREATE TABLE Tutorial
(
    ID         int PRIMARY KEY,
    teacher_ID int,
    student_ID int,
    schedule   time NOT NULL
);

CREATE TABLE Teaches
(
    ID           int PRIMARY KEY,
    teacher_ID   int,
    course_ID    int,
    weekly_hours int NOT NULL
);

-- Relationships definition.
ALTER TABLE Inscription
    ADD FOREIGN KEY (student_ID) REFERENCES Student (ID);

ALTER TABLE Inscription
    ADD FOREIGN KEY (course_ID) REFERENCES Course (ID);

ALTER TABLE Teaches
    ADD FOREIGN KEY (teacher_ID) REFERENCES Teacher (ID);

ALTER TABLE Teaches
    ADD FOREIGN KEY (course_ID) REFERENCES Course (ID);

ALTER TABLE Tutorial
    ADD FOREIGN KEY (student_ID) REFERENCES Student (ID);

ALTER TABLE Tutorial
    ADD FOREIGN KEY (teacher_ID) REFERENCES Teacher (ID);