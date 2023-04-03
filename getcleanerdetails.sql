declare
cNum cleaner.cno%type:= &test;
ccName cleaner.cname%type;
ccSalary cleaner.csalary%type;
status boolean;
procedure getCleanerDetails(CleanerNo in cleaner.cno%type, CleanerName out cleaner.cname%type,CleanerSalary out cleaner.csalary%type,status out Boolean)
is 
begin 
select cname, csalary 
into CleanerName, CleanerSalary
from cleaner 
where cno= CleanerNo;

status :=true;

exception
when NO_DATA_FOUND THEN status:=false;
end;

begin
--cnum:='117';
getCleanerDetails(cNum,ccName,ccSalary,status);
if (status) then 
dbms_output.put_line(cnum||' '||ccname||' '||ccsalary*1.1);
else
--dbms_output.put_line('test');
dbms_output.put_line ('Cleaner '||cNum||' introuvable');
end if;
end;