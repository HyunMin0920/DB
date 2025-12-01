select c.gname, point, g.gname
from customer c, gift g
where g.gname
='Notebook' and c.point>=g.g_start;

select c.gname, point, g.gname gift_name
from customer c,gift g
where c.point between g.g_start and g.g_end;

create table dept3 as select * from dept2;

select ename, d.deptno, dname from emp e, dept d where e.deptno=d.deptno;

select max(sal+nvl(comm,0)) from emp;

select deptno, ename, sal, sum(sal) over(order by sal) total from emp;

select e1.empno, e1.ename, e1.mgr, e2.ename from emp e1, emp e2 where e1.mgr=e2.empno;

select deptno, ename, sal, sum(sal) over(),
round(sal/sum(sal) over() * 100,2)
from emp order by 5 desc;

select deptno, sum(sal) TOTAL from emp group by deptno;

select e1.empno, e1.ename, e1.hiredate,
count(e2.empno)
from emp e1, emp e2
where e1.hiredate>e2.hiredate(+)
group by e1.empno, e1.ename, e1.hiredate
order by 4;

alter table dept6 modify(loc varchar2(20));

rename dept6 to dept7;

create table new_tavle(no number(3), name varchar2(10), birth date default sysdate);

drop table new_table;
truncate table new_table;
delete from new_table;