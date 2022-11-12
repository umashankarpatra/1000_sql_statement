CREATE TABLE Employee(
    id int NOT NULL,
    name varchar2(100),
    salary int,
    departmentId int,
    CONSTRAINT Emp_pk PRIMARY KEY (id)
);

drop table employee;

CREATE TABLE Department (
    id int NOT NULL,
    name varchar2(100),
    CONSTRAINT Department_pk PRIMARY KEY (id)
);

select * from Employee;
select * from Department;

select d.name as Department,e.name as Employee,e.salary from Employee e ,Department d where e.departmentid=d.ID 
GROUP BY(e.departmentid)

select e.departmentid , max(salary) from Employee e ,Department d where e.departmentid=d.ID 
GROUP BY(e.departmentid)



select dept.name as Department,emp.name as Employee,emp.salary from Department dept inner join Employee emp on emp.departmentid = dept.ID where 
(emp.departmentid, emp.salary) in 
(select e.departmentid , max(salary) from Employee e ,Department d where e.departmentid=d.ID 
GROUP BY(e.departmentid));






