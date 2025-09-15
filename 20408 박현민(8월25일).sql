select * from student;
select count(*)||'EA('||count(*)/count(*)*100||'%)'TOTAL,
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'02','SEOUL'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'02','SEOUL'))/count(name)*100)||'%)' "SEOUL",
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'031','GYEONGGI'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'031','GYEONGGI'))/count(name)*100)||'%)' "GYEONGGI",
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'051','BUSAN'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'051','BUSAN'))/count(name)*100)||'%)' "BUSAN",
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'052','ULSAN'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'052','ULSAN'))/count(name)*100)||'%)' "ULSAN",
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'053','DAEGU'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'053','DAEGU'))/count(name)*100)||'%)' "DAEGU",
count(decode(substr(tel,1,instr(tel,')',1,1)-1),'055','GYEONGNAM'))||'EA('||
(count(decode(substr(tel,1,instr(tel,')',1,1)-1),'055','GYEONGNAM'))/count(name)*100)||'%)' "GYEONGNAM"
from student;

select deptno, ename, sal, sum(sal) over(partition by deptno order by sal)"TOTAL" from emp;





select deptno, ename,sal, sum(sal)over(partition by deptno)"SUM_DEPT",
round((sal/sum(sal)over(partition by deptno))*100,2)"%" from emp 
order by 1,3 desc; 




select deptno, ename,sal, sum(sal)over(partition by deptno)"SUM_DEPT",
round((ratio_to_report(sal)over(partition by deptno))*100,2)"%" from emp 
order by 1,2 desc; 



select * from loan where l_store=1000 and l_code=100;
select l_date "대출일자",l_code 대출종목코드,l_qty 대출건수,l_total 대출총액,
sum(l_total) over(order by l_total)누적대출금액
from loan where l_store=1000;




select l_code 대출종목코드,l_store 대출지점,l_date 대출일자,l_qty 대출건수,l_total 대출액,
sum(l_total)over(partition by l_code, l_store order by l_date)누적대출금액
from loan;



select l_date 대출일자, l_code 대출구분코스, l_qty 대출건수, l_total 대출총액,
sum(l_total)over(partition by l_code order by l_total)코드별누적대출금액
from loan where l_store=1000;
