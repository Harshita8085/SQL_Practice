-- second solution for duplicate removal --
create table Employee1(
id int,
name char(10),
age int,
salary int
);
insert into Employee1 values(1,"Arun",23,20000);
insert into Employee1 values(2,"Arun",23,20000);
insert into Employee1 values(3,"Vansh",25,30000);
insert into Employee1 values(4,"Vansh",25,30000);
insert into Employee1 values(5,"Vansh",25,30000);
insert into Employee1 values(6,"Kamal",27,40000);
insert into Employee1 values(7,"Kamal",27,40000);
insert into Employee1 values(8,"Ravi",20,50000);

select * from Employee1;

delete from Employee1
where id not in (
select min(id) from Employee1 group by name );

drop table Employee1;
