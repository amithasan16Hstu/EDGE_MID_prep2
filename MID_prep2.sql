create table student_info(
std_id int not null,
std_name varchar(20),
department varchar(20),
cgpa double,
primary key(std_id)
);
insert into student_info(std_id,std_name,department,cgpa)
values(2102043,"Amit","CSE",3.956),(2102044,"Porag","CSE",3.456),(2102077,"Sayem","EEE",3.356),
(2102154,"Lipa","ECE",3.786),(2102089,"Tonik","EEE",3.546),(2102157,"Sharmin","ECE",3.678);

select * from student_info;

select * from student_info
where std_id=2102043;

select * from student_info
where (department="CSE" or department="ECE")and cgpa>3.5;

select * from student_info
where (department="CSE" or department="ËCE") and cgpa>3.5
order by cgpa desc;

alter table student_info
add column supervisor varchar(20);

update student_info
set supervisor="Sumya Akter"
where std_id=2102043;

select * from student_info;

alter table student_info
add column email varchar(20);
select * from student_info;

delete from student_info 
where std_id=2102044;
select * from student_info;

select * from student_info
limit 3;

select * from student_info
where department="ECE"
group by std_id
order by max(cgpa) desc;

-- Having
SELECT *
FROM student_info
WHERE department="ECE";
SELECT count(std_id)
FROM student_info
GROUP BY cgpa
HAVING count(std_id)>2102043;


