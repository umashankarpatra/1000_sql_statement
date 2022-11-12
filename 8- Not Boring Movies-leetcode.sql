
//620. Not Boring Movies 

//create Cinema table
CREATE TABLE Cinema (
    id int NOT NULL,
    movie varchar2(10),
    description varchar2(10),
    rating float
);

select * from Cinema where mod(id,2) = 1 and description !='boring' order by rating desc