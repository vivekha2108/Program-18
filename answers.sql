DELIMITER //

CREATE OR REPLACE FUNCTION COUNT_STUDENTS(DepartmentID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE student_count INT;

    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE Student.DepartmentID = DepartmentID;

    RETURN student_count;
END //

DELIMITER ;
