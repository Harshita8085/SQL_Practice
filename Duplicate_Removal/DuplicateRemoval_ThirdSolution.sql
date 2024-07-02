-- third solution for duplicate removal--
create table Employee2(
id int ,
name char(10),
age int,
salary int
);

select * from Employee2;

insert into Employee2 values(1,"Arun",23,20000);
insert into Employee2 values(1,"Arun",23,20000);
insert into Employee2 values(2,"Vansh",25,30000);
insert into Employee2 values(2,"Vansh",25,30000);
insert into Employee2 values(2,"Vansh",25,30000);
insert into Employee2 values(3,"Kamal",27,40000);
insert into Employee2 values(3,"Kamal",27,40000);
insert into Employee2 values(4,"Ravi",20,50000);

delete from Employee2
(select *,row_number() over(partition by name, age, salary) as rn from Employee2)
where rn>1;