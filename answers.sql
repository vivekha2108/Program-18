CREATE OR REPLACE FUNCTION COUNT_STUDENTS (
    DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE Student.DepartmentID = COUNT_STUDENTS.DepartmentID;

    RETURN v_count;
END;
/
