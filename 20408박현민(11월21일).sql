create table t_readonly
(no number,
name varchar2(10));

ALTER table t_readonly read only;

ALTER table t_readonly read WRITE;

insert into t_readonly
values(1,'AAA');

1row created

commit;

select * from t_readonly;

create table vt1
(col1 number,
col2 number,
col3 number generated always as(col1+col2));

insert into vt1(col1,col2) values(1,2);

select * from vt1;

update vt1 set col1=5;

alter table vt1 add
(col4 generated always as ((col1*12)+col2));

select column_name,data_type,data_default
from user_tab_columns
where table_name='VT1';














