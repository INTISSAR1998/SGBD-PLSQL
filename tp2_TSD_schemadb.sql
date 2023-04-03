Create table client
(NumCli number(4) primary key,
Prenom varchar2(30),
Nom varchar2(30),
DN date,
Rue varchar2(30),
CP number(4),
Ville varchar2(30));

Create table fournisseur 
(NumFour number(4) primary key,
RaisonSoc varchar2(30));

Create table produit
(NumProd number(4) primary key,
Desig varchar2(50),
Qte number(8),
PU number(9,3),
NumFour number(4),
Constraint fk_pd_four foreign key (NumFour) references Fournisseur(NumFour));

Create table commande
(RefCmd number(4) primary key,
DateC date,
Mont_HT number(9,3) default 0,
Mont_TVA number(9,3) default 0,
Mont_TTC  number(9,3) default 0,
NumCli number(4),
Constraint fk_cm_cli foreign key(NumCli) references Client(NumCli));

Create table LGCMD
(NumLgCmd number(4) primary key,
Qte number(8),
TauxTVA number(2),
NumProd number(4),
RefCmd number(4),
Constraint fk_lgcm_prod foreign key(NumProd) references Produit(NumProd),
Constraint fk_cm_lgcmd foreign key(RefCmd) references commande(RefCmd));
