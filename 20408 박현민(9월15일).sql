select * from student;
select * from score;
select * from hakjum;

select s.name, sc.total, h.grade from student s, score sc, hakjum h 
where s.studno=sc.studno and sc.total between min_point and max_point;

select s.name, sc.total, h.grade from student s, score sc, hakjum h 
where sc.studno=s.studno and sc.total>=h.min_point and sc.total<=h.max_point;

select * from student;
select * from professor;

select s.name "얄리얄리 얄라셩", p.name "얄라리 랄라" from student s, professor p 
where s.profno=p.profno(+);

select s.name, p.name from student s, professor p 
where s.profno(+)=p.profno;

select s.name, p.name from student s, professor p 
where s.profno(+)=p.profno
union all
select s.name, p.name from student s, professor p 
where s.profno=p.profno(+);

select s.name "얄리얄리 얄라셩",p.name "얄라리 랄라" from professor p 
left outer join student s on s.profno=p.profno;

select e1.empno, e1.ename, e1.mgr, e2.ename from emp e1,emp e2 
where e1.empno=e2.mgr;
