select * from emp;

--�Է°��� ù ���ڸ� �빮�ڷ� ��ȯ
select ename, initcap(ename) "INTCAR" from emp where deptno=10;

--�ҹ��ڷ� ��ȯ
select ename,lower(ename)"LOWER",upper(ename)"UPPER"from emp where deptno=10;

--����
select ename,length(ename),lengthb(ename)from emp where deptno=20;
select 'ȫ�浿',length('ȫ�浿'),lengthb('ȫ�浿')from dual;

--���� ����
select substr('abcde',3,2)"3,2",substr('abcde',-3,2),substr('abcde',-3,4)from dual;

--student���̺��� jumin�÷��� ����ؼ� 1������ 101���� �л����� �̸��� �¾ ����,����,�Ϸ� �� ��¥�� ����ϼ���.
select name,substr(jumin,3,4)-1 "Birthday-1" from student where deptno1=101;