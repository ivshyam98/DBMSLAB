DECLARE
n number;
i number;
flag number;
BEGIN
i:=2;
flag:=1;
n:=12;
FOR i in 2..n/2
LOOP
IF MOD(n,i)=0 THEN
flag:=0;
exit;
END IF ;
END LOOP ;
IF flag=1 THEN
dbms_output.put_line('PRIME');
ELSE
dbms_output.put_line('NOT PRIME');
END IF;
END;
/