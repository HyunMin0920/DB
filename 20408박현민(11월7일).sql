CREATE TABLE dept4
AS
select dcode,dname from dept2;

drop table dept5;
create table dept5
as
select * from dept2 where dcode=1002;
select * from dept5;

create table dept6
as
select dcode,dname from dept2 where dcode IN(1000,1001,1002);
select * from dept6;


create table dept7
as
select * from dept2 where 1=2;

select * from dept7;

alter table dept6
add(location varchar2(10));

alter table dept6
add(location2 varchar2(10) default 'SEOUL'); 