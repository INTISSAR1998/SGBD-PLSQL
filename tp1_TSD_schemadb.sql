Create table Depot 
(dno varchar2(5), 
dname varchar2(20),
daddress varchar2(20),
constraint pk_dno primary key(dno));

Create table BusType
(tno varchar2(5), 
tdescript varchar2(20), 
constraint pk_tno primary key(tno));

Create table BusDriver 
(bdno varchar2(5), 
bdname varchar2(20),
bdsalary number(6,2),
pcvdate date,    
dno varchar2(5),
constraint pk_bdno primary key(bdno),        
constraint fk_dno foreign key(dno) references Depot(dno));
     
Create table Cleaner 
(cno varchar2(5),
cname varchar2(20), 
csalary number(6,2), 
dno varchar2(5), 
constraint pk_cno primary key(cno), 
constraint fk_dno1 foreign key(dno) references Depot(dno));
            
Create table Route 
(rno varchar2(5), 
rdescript varchar2(30), 
dno varchar2(5), 
constraint pk_rno primary key(rno), 
constraint fk_dno2 foreign key(dno) references Depot(dno));


Create table Bus 
(regno varchar2(10),
modele varchar2(20), 
tno varchar2(5), 
dno varchar2(5), 
cno varchar2(5), 
constraint pk_reg_no primary key(regno),
constraint fk_tno foreign key(tno) references BusType(tno),
constraint fk_dno3 foreign key(dno) references Depot(dno),
constraint fk_cno foreign key(cno) references Cleaner(cno));


Create table Ability 
(bdno varchar2(5), 
rno varchar2(5), 
constraint pk_drroute primary key(bdno, rno), 
constraint fk_bdno foreign key(bdno) references busdriver(bdno), 
constraint fk_rno foreign key(rno) references route(rno));

Create table Training 
(bdno varchar2(5), 
tno varchar2(5), 
trainingdate date, 
constraint pk_drbustype primary key(bdno,tno), 
constraint fk_bdno2 foreign key(bdno) references busdriver(bdno), 
constraint fk_tno2 foreign key(tno) references BusType(tno));

Create table Restriction 
(rno varchar2(5), 
tno varchar2(5),
constraint pk_rbustype primary key(rno,tno), 
constraint fk_rno2 foreign key(rno) references route(rno),
constraint fk_tno3 foreign key(tno) references BusType(tno));


select table_name from user_tables;