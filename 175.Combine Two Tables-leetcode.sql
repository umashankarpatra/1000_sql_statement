//175. Combine Two Tables

CREATE TABLE Person (
    personId  int,
    lastName VARCHAR2(7),
    firstName VARCHAR2(7)
);
CREATE TABLE Address (
    addressId  int,
    personId int,
    city VARCHAR2(7),
    state VARCHAR2(7)
);

select * from Person;
select * from Address;

SELECT p.lastname,p.firstname,a.city,a.state
FROM Person p
LEFT JOIN Address a
ON p.personid = a.personid;




