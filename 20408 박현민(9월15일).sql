select * from student;
select * from score;
select * from hakjum;

select s.name, sc.total, h.grade from student s, score sc, hakjum h 
where s.studno=sc.studno and sc.total between min_point and max_point;

select s.name, sc.total, h.grade from student s, score sc, hakjum h 
where sc.studno=s.studno and sc.total>=h.min_point and sc.total<=h.max_point;

select * from student;
select * from professor;

select s.name "¾â¸®¾â¸® ¾â¶ó¼õ", p.name "¾â¶ó¸® ¶ö¶ó" from student s, professor p 
where s.profno=p.profno(+);

select s.name, p.name from student s, professor p 
where s.profno(+)=p.profno;

select s.name, p.name from student s, professor p 
where s.profno(+)=p.profno
union all
select s.name, p.name from student s, professor p 
where s.profno=p.profno(+);