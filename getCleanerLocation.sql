Create or replace function getCleanersLocation(cleanerNum in Cleaner.cNo%type)
return Depot.dAddress %type as
dLocation depot.dAddress %type;
begin
select dAddress
into dLocation
from Cleaner c, Depot d
where cNo= cleanerNum
and d.dNo=c.dNo;
return (dLocation);
end;

-- test de la fonction 
select cName, getCleanersLocation(cNo) "Address"
from Cleaner
where cNo='110';