--데이터구조
desc emp;
select * from emp;
select ename,job from emp;
--테이블 구조
desc professor;
select * from professor;
select name, 'good morning~~!' "ㅎㅇ" FROM professor;
select dname, 'it''s deptno:'"ㅎㅇ", deptno"DNAME AND DEPINO" FROM dept;
select dname, 'it''s deptno:'||deptno"DNAME AND DEPINO" FROM dept;
select dname,q'[,it's depyno:]',deptno"DNAME AND DEPINO" FRoM dept;
select profno"교수님 번호",name 이름,pay as "급여" FROM professor;