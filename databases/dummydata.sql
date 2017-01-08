
use NycaTime;


insert into AclRoles(roleName) values('Super Admin');
insert into AclRoles(roleName) values('manager');
insert into AclRoles(roleName) values('Instructor');
insert into AclRoles(roleName) values('Student');


insert into Persons(firstName,lastName,email,userName,passwd) values ('Surya','Telabrolu','dummy@gmail.com','Surya','Surya');
insert into Persons(firstName, lastName,email,userName,passwd) values ('SaiAjay','Doddapaneni','dummy@gmail.com','SaiAjay','SaiAjay');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Sudheer','Kunamneni','dummy@gmail.com','Sudheer','Sudheer');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Adithya','Undavalli','dummy@gmail.com','Adithya','Adithya');
insert into Persons(firstName, lastName,email,userName,passwd) values ('JaniKhan','Pathan','dummy@gmail.com','JaniKhan','JaniKhan');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Sudheer','Mandava','dummy@gmail.com','SudheerM','Sudheer');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Jagadeesh','Muvva','dummy@gmail.com','Jagadeesh','Jagadeesh');
insert into Persons(firstName, lastName,email,userName,passwd) values ('John','Doe','dummy@gmail.com','John','John');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Teja','Muppala','dummy@gmail.com','Teja','Teja');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Vamsi','Mallela','dummy@gmail.com','Vamsi','Vamsi');
insert into Persons(firstName, lastName,email,userName,passwd)values ('Dutt','Alisyam','dummy@gmail.com','Dutt','Dutt');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Sudheer','Karumanchi','dummy@gmail.com','SudheerKa','Sudheer');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Siddartha','Annamaneni','dummy@gmail.com','Siddartha','Siddartha');
insert into Persons(firstName, lastName,email,userName,passwd) values ('Hari Babu','Kondabolu','dummy@gmail.com','Hari Babu','Hari Babu');



insert into PersonsAcl  values (1,1);
insert into PersonsAcl  values(2,4);
insert into PersonsAcl  values(3,4);
insert into PersonsAcl  values(4,4);
insert into PersonsAcl  values(5,4);
insert into PersonsAcl  values(6,4);
insert into PersonsAcl  values(7,4);
insert into PersonsAcl  values(8,4);
insert into PersonsAcl  values(9,2);
insert into PersonsAcl  values(10,3);
insert into PersonsAcl  values(11,3);
insert into PersonsAcl  values(12,3);
insert into PersonsAcl  values(13,3);
insert into PersonsAcl  values(14,3);


insert into Enrollments(instructorId,studentId,startDate) values (10,2,'2016-10-11');
insert into Enrollments(instructorId,studentId,startDate) values (10,3,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (11,3,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (12,4,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (13,5,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (13,6,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (12,7,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (12,6,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (11,4,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (10,9,'2016-12-11');
insert into Enrollments(instructorId,studentId,startDate) values (10,8,'2016-12-11');


insert into StatusTypes(statusName) values ('Pending');
insert into StatusTypes(statusName) values ('Approved');
insert into StatusTypes(statusName) values ('Declined');


insert into Times(enrollmentId,sessionDate,hours,statusId) values (8,'2016-12-11','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (2,'2016-10-11','03:16:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (1,'2016-12-11','02:15:11',2);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (3,'2016-12-11','02:15:11',2);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (4,'2016-12-11','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (5,'2016-12-11','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (6,'2016-6-11','02:15:11',3);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (7,'2015-12-13','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (9,'2016-12-11','02:15:11',2);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (10,'2014-12-11','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (3,'2017-11-12','02:15:11',2);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (2,'2016-01-11','02:15:11',3);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (1,'2016-02-12','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (4,'2016-05-03','02:15:11',1);
insert into Times(enrollmentId,sessionDate,hours,statusId) values (3,'2016-12-11','02:15:11',3);


insert into discussions(instructorEnrollmentTimeId,discussion) values (1,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (2,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (3,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (2,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (3,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (4,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (1,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (6,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (7,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (9,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (7,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (8,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (1,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (3,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (6,'dummydummydummydummy');
insert into discussions(instructorEnrollmentTimeId,discussion) values (6,'dummydummydummydummy');



