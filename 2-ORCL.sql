CREATE TABLE Person (
    id int NOT NULL,
    name varchar2(100),
    CONSTRAINT Person_pk PRIMARY KEY (id)
);

ALTER TABLE
   Person
RENAME COLUMN
name 
TO
email;



select count(*) from Person Group by email having count(email)>1

select * from Person;

select * from (
  select t.*, row_number() over (order by price desc) rn
  from   Person t
)
where  rn <= 3
order  by rn;

delete  FROM Person p WHERE rowid  not in  (select min(rowid) from Person p1 where p.email=p1.email);



select 1 from employee e1 join employee e2 on e1.id=e2.managerid


select * from employee  where employee.salary >(select e.salary from employee e ,employee e1 where e.id=e1.managerid);

select e2.name as Employee from employee e1 join employee e2 on e1.id=e2.managerid where e2.salary>e1.salary




select distinct(v.viewer_id) as id from Views v where v.author_id=v.viewer_id order by id ASC;
