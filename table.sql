show databases;
use students;
show tables;
create table students(
    PersonID int AUTO_INCREMENT Primary key,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
show tables;

insert into  Students 
values (1,"Black", "John", "UK", "London");
insert into  Students 
values (2,"Sparrow", "John", "UK", "Belfast");
insert into  Students 
values (3,"King", "Johnson", "USA", "New York");
insert into  Students 
values (4,"Ivanov", "Ivan", "Russia", "Moscow");
insert into  Students 
values (5,"Kupala", "Yanka", "Belarus", "Minsk");

create table Courses(
    ID int AUTO_INCREMENT Primary key,
    faculty varchar(255),
    total int
    );
		show tables;
		
	insert into Courses 
	values (1, "english", 250);
	insert into Courses 
	values (2, "german", 200);
	insert into Courses 
	values (3, "french", 50);
	insert into Courses 
	values (4, "spanish", 100);
	insert into Courses 
	values (5, "italian", 50);
	
	use Courses;
	select * from students;
select * from courses;
use  students;
select distinct LastName from students;

select * from students limit 3;

select * from Courses where total =50;
select * from Courses where total > 50;
select * from Courses where total >=50;
select * from Courses where total =50 or faculty = "german";
select * from Courses where total between 50 and 200;


select LastName from students where LastName like 'I%';
select LastName from students where LastName like '%ow';

select LastName as фамилия from students;

select total from courses where total in(200, 50); 
select * from courses order by faculty asc;
select * from courses order by total desc;
select avg (total) from courses;
select sum(total) from courses;
select min(total) as minnumber from courses ;
select count(faculty) from courses;
select courses.faculty, students.FirstName, students.LastName from courses join students on courses.id = PersonID;
select courses.total, students.LastName, students.FirstName, students.city from courses left join students on courses.id = PersonID;
select courses.id, students.LastName, students.FirstName, students.city,courses.faculty from courses right join students on courses.id = PersonID;
