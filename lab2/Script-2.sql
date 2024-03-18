create table if not exists Studing_groups(
	group_id serial primary key,
	group_name text not null
);

create table if not exists Students(
	student_id serial primary key,
	group_id int not null,
	student_name text not null,
	foreign key (group_id) references studing_groups(group_id)
);

create table if not exists Subjects(
	subject_id serial primary key,
	subject_name text not null
);

create  table if not exists Teachers (
    teacher_id serial primary key,
    teacher_name text not null
);

create table if not exists  Teacher_Subject_Assignment (
    assignment_id serial primary key,
    teacher_id int not null,
    subject_id int not null,
    foreign key (teacher_id) references Teachers(teacher_id),
    foreign key (subject_id) references Subjects(subject_id)
);

create table if not exists Grades (
    grade_id serial primary key,
    student_id int not null,
    subject_id int not null,
    grade_value DECIMAL(4, 2) not null,
    foreign key (student_id) references Students(student_id),
    foreign key (subject_id) references Subjects(subject_id)
);

