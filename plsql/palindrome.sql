DECLARE
str1 varchar(50):='&n';
str2 varchar(50);
len number;
i number;
BEGIN
len: = length(str1);
FOR i IN REVERSE 1..len
LOOP
str2:=str2 || substr(str1,i,1);
END LOOP;
IF str1=str2 THEN
dbms_output.put_line('IT’S PALINDROME');
ELSE
 dbms_output.put_line('IT’S NOT PALINDROME');
END IF ;
END;
/