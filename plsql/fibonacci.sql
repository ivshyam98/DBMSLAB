DECLARE
first number :=0;
Second number:=1;
third  number;
n number:=8;
i number;
BEGIN
dbms_output.put_line('Fibonacci series is:');
 dbms_output.put_line(first);
dbms_output.put_line(second);
FOR i iN 2..n
LOOP
third := first + second ;
first:= second ;
second:= third;
dbms_output.put_line(third);
END LOOP;
END;
/