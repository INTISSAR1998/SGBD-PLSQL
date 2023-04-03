create or replace trigger ADDCMD
after insert on LGCMD
for each row
declare
v_PU Produit.PU%Type;
v_MHT COMMANDE.Mont_HT%Type;
v_MTVA COMMANDE.Mont_TVA%Type;
v_MTTC COMMANDE.Mont_TTC%Type;
v_TTC COMMANDE.Mont_TTC%Type;
Begin
Select PU into v_PU from Produit where NumProd = :new.NumProd;
Select Mont_HT into v_MHT from COMMANDE where RefCMD = :new.RefCMD;
Select Mont_TVA into v_MTVA from COMMANDE where RefCMD = :new.RefCMD;
Select Mont_TTC into v_MTTC from COMMANDE where RefCMD = :new.RefCMD;
v_MHT:=v_MHT+v_PU*:new.Qte;
v_MTVA:=v_MTVA +(v_PU*:new.Qte)*(:new.TauxTVA/100);
v_MTTC:=v_MHT+v_MTVA;
update COMMANDE set Mont_HT=v_MHT, Mont_TVA=v_MTVA, Mont_TTC=v_MTTC where RefCMD = :new.RefCMD;
End;