create or replace procedure sp_git(pi_deptno  in number,pi_n out number)

is
cursor c1 is select ename,sal from emp_a  where deptno=pi_deptno;
v_ename varchar2(10);
v_sal number;
begin
open c1;
loop
fetch c1 into v_ename,v_sal;
exit when c1%notfound;
dbms_output.put_line(v_ename||' '||v_sal);
end loop;
close c1;
end;
/