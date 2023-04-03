
---- load Client with data

insert into Client values 
(100,'Mohamed','Ben Salah',to_date('19850209','YYYYMMDD'),'',2010,'Beja');

insert into Client values
(101,'Sami','Ben Brahim',to_date('19900309','YYYYMMDD'),'',5090,'Monastir');

insert into Client values
(102,'Haroune','Ben Mahmoud',to_date('19890109','YYYYMMDD'),'',4000,'Tunis');

insert into Client values
(103,'Fatma','Ben Sassi',to_date('20000109','YYYYMMDD'),'',3900,'Ben Arous');

insert into Client values
(104,'Ismail','Moussa',to_date('20010809','YYYYMMDD'),'',2900,'Sousse');

insert into Client values
(105,'Moussa','Ben Ali',to_date('19790609','YYYYMMDD'),'',5100,'Mahdia');

insert into Client values
(106,'Imen','Limam',to_date('19820209','YYYYMMDD'),'',6001,'Gabes');


--load fournisseur with data 

insert into fournisseur values
(1000,'Hytech');

insert into fournisseur values
(1001,'Dreams');

insert into fournisseur values
(1002,'Fnac');

insert into fournisseur values
(1003,'Scopus');



--load Produit with data 

insert into Produit values
(200,'Smartphone samsung Galaxy A30S',7,890,1002);

insert into Produit values
(201,'PC de Bureau Lenovo V530',5,790,1002);

insert into Produit values
(202,'PC Portable Lenovo Ideapad L340',3,2400,1003);

insert into Produit values
(203,'PowerBank sans fil GE10000CQ',12,170,1000);

insert into Produit values
(204,'Disque dur externe ADATA AHD770G',9,900,1001);


--load Commande with data 

insert into Commande values
(3000,to_date('20190210','YYYYMMDD'),2140,385.200,2525.200,100);

insert into Commande values
(3001,to_date('20191029','YYYYMMDD'),2400,432,2832,102);

insert into Commande values
(3002,to_date('20190925','YYYYMMDD'),510,91.800,601.800,101);

insert into Commande values
(3003,to_date('20190713','YYYYMMDD'),2670,480.600,3150.600,106);

insert into Commande values
(3004,to_date('20190805','YYYYMMDD'),890,160.200,1050.200,104);

insert into Commande values
(3005,to_date('20190114','YYYYMMDD'),340,61.200,401.200,103);

insert into Commande values
(3006,to_date('20190409','YYYYMMDD'),790,142.200,932.200,105);


--load LGCMD with data 

insert into LGCMD values 
(5000,2,18,204,3000);

insert into LGCMD values 
(5001,2,18,203,3000);

insert into LGCMD VALUES 
(5002,1,18,202,3001);

insert into LGCMD values 
(5003,3,18,203,3002);

insert into LGCMD values 
(5004,3,18,200,3003);

insert into LGCMD values 
(5005,1,18,200,3004);

insert into LGCMD values 
(5006,2,18,203,3005);

insert into LGCMD values 
(5007,1,18,201,3006);

commit;
select * from client;
select * from Fournisseur;
select * from Produit;
select * from Fournisseur;
select * from Commande;
select * from LGCMD;
