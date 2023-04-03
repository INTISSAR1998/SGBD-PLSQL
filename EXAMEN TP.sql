create or replace procedure SelectProduct(RaiSoc fournisseur.raisonsoc%type)
is
    cursor CurProduct is select Desig,PU into des,p from HR.PRODUIT;
    cursorPro CurProduct%ROWTYPE;
    h number;
    lignevide exception;
    
    Numero Produit.NumProd%TYPE;
    Designation Produit.Desig%type;
    Quantite Produit.Qte%type;
    ProduitUnitaire Produit.PU%type;
    RaisonSociale fournisseur.raisonsoc%type;
begin 
    SELECT count(*) into h from produit;
    for cursorPro IN CurProduct loop
    dbms_output.put_line('Les produits fournis par le fournisseur',cursorPro.RaisonSociale,'sont :','Designation :',cursorPro.Designation,'Prix unitaire :'
    ,cursorPro.ProduitUnitaire,'dinars');
    end loop;
      if (h=0) then raise lignevide;
      end if;
      exception
      /*when NO_DATA_FOUND then*/
      when lignevide then 
      dbms_output.put_line('Pas de produits commandés auprès du fournisseur',cursorPro.RaiSoc);
      when others then
      dbms_output.put_line('Une autre erreur est survenue');
    
end;

  