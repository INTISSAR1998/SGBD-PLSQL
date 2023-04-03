DECLARE  
n NUMBER(2); 
CURSOR employes IS SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno  FROM scott.emp; 
--employe employes%ROWTYPE;
newsal scott.emp.sal%TYPE;
newcomm scott.emp.comm%TYPE;
empvide EXCEPTION;

BEGIN   
--Test table vide   
SELECT COUNT(*) INTO n FROM scott.emp;   
IF n=0 THEN RAISE empvide;
END IF;
--Remplissage emp_tn   
FOR employe IN employes LOOP 
--Calculs     
newsal:=employe.sal*3.1; 
newsal:=newsal*1.25;
IF employe.comm IS NOT NULL THEN newcomm:=employe.comm*3.1; 
ELSE newcomm:=NULL;
END IF;     
  --Insertion de données     
INSERT INTO emp_tn VALUES(employe.empno, employe.ename, employe.job, employe.mgr, employe.hiredate, newsal, newcomm, employe.deptno);   
END LOOP;
EXCEPTION 
WHEN empvide THEN RAISE_APPLICATION_ERROR (-20501, 'Pas   d’employé !');
END;

--select * from emp_tn;
