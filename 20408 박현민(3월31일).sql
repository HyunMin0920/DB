--�����ͱ���
desc emp;
select * from emp;
select ename,job from emp;
--���̺� ����
desc professor;
select * from professor;
select name, 'good morning~~!' "����" FROM professor;
select dname, 'it''s deptno:'"����", deptno"DNAME AND DEPINO" FROM dept;
select dname, 'it''s deptno:'||deptno"DNAME AND DEPINO" FROM dept;
select dname,q'[,it's depyno:]',deptno"DNAME AND DEPINO" FRoM dept;
select profno"������ ��ȣ",name �̸�,pay as "�޿�" FROM professor;