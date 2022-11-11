//185. Department Top Three Salaries
CREATE TABLE Employee (
    id  int,
    name VARCHAR2(7),
    salary int,
    departmentId int
);

CREATE TABLE Department (
    id  int,
    name VARCHAR2(7)
);

drop table Department;

select * from Employee;

select * from Department;