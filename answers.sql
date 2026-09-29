CREATE OR REPLACE FUNCTION COUNT_STUDENTS(
    DepartmentID IN INT
)
RETURN INT
IS
    student_count INT;
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE Student.DepartmentID = DepartmentID;

    RETURN student_count;
END;
/
