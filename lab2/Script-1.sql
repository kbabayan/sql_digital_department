create role lab2_owner with 
		SUPERUSER
		LOGIN
		password '1234';

create database lab_2 with
		owner lab2_owner
		connection limit 50;