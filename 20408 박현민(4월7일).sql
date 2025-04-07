--문제 1
select * from student;
select name||' ''s ID:'|| ID ||' , weight is ' || weight||'kg' from student;
--문제 2
select * from emp;
select ename||'('||job||'),'||ename||' '' '||job||' '' ' from emp;
--문제 3
select * from emp;
select ename||' '' s sal is $'||sal from emp;
--조건
select empno,ename from emp where empno = 7900;
select empno,ename, sal from emp where sal < 1000;
--산술연산자
select ename,sal,deptno from emp where deptno = 10;
select ename,sal+100,deptno from emp where deptno = 10;