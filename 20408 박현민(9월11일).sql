select * from dept;
select * from emp;
select empno, ename, dname, deptno from emp,dept where emp.deptno=dept.deptno;
select empno, ename, dname, e.deptno from emp e,dept d where e.deptno=d.deptno;

select * from student;
select * from professor;
select s.name stu_name,p.name profno_name 
from student s, professor p where p.profno=s.profno;

select * from student;
select * from department;
select * from professor;
select s.name stu_name, d.dname dept_name, p.name prof_name 
from student s, department d, professor p where s.deptno1=d.deptno and s.profno=p.profno;

select * from customer;
select * from gift;
select c.gname cust_name, to_char(c.point,'999,999') "POINT", g.gname glft_name 
from customer c, gift g where c.point between g.g_start and g.g_end; 
