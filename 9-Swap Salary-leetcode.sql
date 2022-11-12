//627. Swap Salary

CREATE TABLE Salary (
    id int,
    name VARCHAR2(40),
    sex VARCHAR2(1),
    salary int
);

select * from Salary;

UPDATE Salary
SET Salary.SEX = CASE 
WHEN SEX = 'm' THEN 'f'
WHEN SEX = 'f' THEN 'm'
END;