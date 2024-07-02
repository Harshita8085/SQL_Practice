-- first solution for duplicate removal --
use dummy;
create table Employee(
name char(10),
age int,
salary int
);
insert into Employee values("Arun",23,20000);
insert into Employee values("Arun",23,20000);
insert into Employee values("Vansh",25,30000);
insert into Employee values("Vansh",25,30000);
insert into Employee values("Vansh",25,30000);
insert into Employee values("Kamal",27,40000);
insert into Employee values("Kamal",27,40000);
insert into Employee values("Ravi",20,50000);

select * from Employee;

create table new_table select distinct * from Employee;
select * from new_table;

drop table Employee;

alter table new_table rename to Employee;