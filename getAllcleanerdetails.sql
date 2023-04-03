set serveroutput on

declare
cursor cleanerCursor is select cNo, cName, cSalary from Cleaner;

cleanerCursor_rec cleanerCursor%rowtype;

status boolean := true;

-- définition de la procédure 
procedure getAllCleanerDetails is 
begin 
open cleanerCursor;
fetch cleanerCursor into cleanerCursor_rec;

while cleanerCursor%found loop 
dbms_output.put_line(cleanerCursor_rec.cNo||' '||cleanerCursor_rec.cName||' '||cleanerCursor_rec.cSalary *1.1); 
fetch cleanerCursor into cleanerCursor_rec;
end loop;

-- Déclaration de l'exception de table cleaner vide
exception
when NO_DATA_FOUND THEN status:=false;
close cleanerCursor;
end;
begin
-- Traitement de l'exception et appel de la procédure
if (status) then 
dbms_output.put_line('All Cleaners details :');
getAllCleanerDetails;
else
dbms_output.put_line ('The cleaner table is empty');
end if;
end;