insert into student(student_id,student_name,student_age,student_address,student_contact,student_class)
values(1,'ramoji',34,'Hyderabad',8143121190,'8');

select * from student;

CREATE TABLE Students (
   StudentID INT,
   Name VARCHAR(50),
   Age INT
);

insert into student(student_id,student_name,student_age,student_address,student_contact,student_class)
values(2,'Lakshmoji',34,'Hyderabad',8712321190,'8');

select student_id,student_name,student_address,student_contact,student_class from student where student_name='ramoji' ;
