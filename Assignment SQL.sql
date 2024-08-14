
CREATE DATABASE ASSIGNMENTS_SQL_db;
USE Assignment_SQL_db;

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;

CREATE TABLE Members(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT);
    
    
CREATE TABLE WorkoutSessions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO members(name,age)
VALUES ('Brian Smith', '48'), ('Sara Doe', '42'), ('Manny Name', '21'), ('Monique Best', '23'), ('Sebastian H', '18');

INSERT INTO workoutsessions (member_id,session_date, session_time, activity)
VALUES (1,'2024-10-10', '10:30 AM', 'swimming');
INSERT INTO workoutsessions (member_id,session_date, session_time, activity)
VALUES (2,'2024-11-15', '11:00 AM', 'cycling'),(3,'2024-11-01', '9:45 PM', 'Yoga'), (4,'2024-11-02', '1:00 PM', 'running'),(5,'2024-11-11', '9:00 Am', 'cardio');
 
 INSERT INTO members
 SET name='Jane Doe', age = '25';
 
INSERT INTO workoutsessions (member_id,session_date, session_time, activity)
VALUES (6,'2024-08-15', '11:00 AM', 'boxing');

UPDATE workoutsessions
SET session_time ="10:00 Pm"
WHERE id =15;

UPDATE members
SET name = 'John Doe'
Where id =5;


DELETE FROM workoutsessions
WHERE id = 14;

DELETE FROM members
WHERE name = "John Doe";

 
 




