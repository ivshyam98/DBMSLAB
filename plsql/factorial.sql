CREATE OR REPLACE PROCEDURE findFactorial
AS
n number;
fac number:=1;
i number;
BEGIN
n:=&n;
FOR i IN 1..n
LOOP
fac:= fac * i ;
END LOOP;
dbms_output.put_line('Factorial='||fac);
END;
/