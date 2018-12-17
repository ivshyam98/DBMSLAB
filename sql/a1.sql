create table employee 
 (
 ssn varchar(6),
 name varchar(10),
 deptno int,
 primary key(ssn)
 );

 create table project
 (
 projectno varchar(10),
 projectarea varchar(20),
 primary key(projectno)
 );

 create table assignedto
 (
 usn varchar(6),
 projectno varchar(10),
 foreign key(usn) references employee(ssn),
 foreign key(projectno) references project(projectno)
 );

 insert into employee values('01','abc',10);
 insert into employee values('01','abc',10);
 insert into employee values('03','pqr',30);
 insert into employee values('04','lmn',40);

insert into project values('100','database');
insert into project values('200','network');
insert into project values('300','android');

insert into assignedto values('01','100');
insert into assignedto values('02','200');
 insert into assignedto values('02','200');
 insert into assignedto values('01','200');

select ssn from employee
 where ssn = (select usn from assignedto
             where projectno=(select projectno from project
                              where projectarea='database'));

select count(ssn),deptno from employee group by deptno;


 update assignedto set projectno='20' where usn='01';







