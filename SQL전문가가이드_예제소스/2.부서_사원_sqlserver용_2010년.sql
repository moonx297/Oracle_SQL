--  DROP TABLES
DROP TABLE EMP;
DROP TABLE DEPT;

--  create TABLES
CREATE TABLE DEPT
        (DEPTNO TinyInt CONSTRAINT PK_DEPT PRIMARY KEY,
         DNAME VARCHAR(14),
	 LOC   VARCHAR(13) ) ;
CREATE TABLE EMP
        (EMPNO Int CONSTRAINT PK_EMP PRIMARY KEY,
	 ENAME VARCHAR(10),
 	 JOB   VARCHAR(9),
	 MGR   SmallInt,
	 HIREDATE DATE,
	 SAL   Decimal(7,2),
	 COMM  DEcimal(7,2),
	 DEPTNO TinyInt CONSTRAINT FK_DEPTNO REFERENCES DEPT);

set nocount on

--  insert DEPT 4 data
INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

--select count(*) from DEPT

--  insert EMP  14 data
INSERT INTO EMP  VALUES (7369,'SMITH','CLERK',    7902,'12-17-1980',800,NULL,20);
INSERT INTO EMP  VALUES (7499,'ALLEN','SALESMAN', 7698,'02-20-1981',1600,300, 30);
INSERT INTO EMP  VALUES (7521,'WARD','SALESMAN',  7698,'02-22-1981',1250,500, 30);
INSERT INTO EMP  VALUES (7566,'JONES','MANAGER',  7839,'04-02-1981',2975,NULL,20);
INSERT INTO EMP  VALUES (7654,'MARTIN','SALESMAN',7698,'09-28-1981',1250,1400,30);
INSERT INTO EMP  VALUES (7698,'BLAKE','MANAGER',  7839,'05-01-1981',2850,NULL,30);
INSERT INTO EMP  VALUES (7782,'CLARK','MANAGER',  7839,'06-09-1981',2450,NULL,10);
INSERT INTO EMP  VALUES (7788,'SCOTT','ANALYST',  7566,'07-13-1987',3000,NULL,20);
INSERT INTO EMP  VALUES (7839,'KING','PRESIDENT', NULL,'11-17-1981',5000,NULL,10);
INSERT INTO EMP  VALUES (7844,'TURNER','SALESMAN',7698,'09-08-1981',1500,0,   30);
INSERT INTO EMP  VALUES (7876,'ADAMS','CLERK',    7788,'07-13-1987',1100,NULL,20);
INSERT INTO EMP  VALUES (7900,'JAMES','CLERK',    7698,'12-03-1981',950,NULL,30);
INSERT INTO EMP  VALUES (7902,'FORD','ANALYST',   7566,'12-03-1981',3000,NULL,20);
INSERT INTO EMP  VALUES (7934,'MILLER','CLERK',   7782,'01-23-1982',1300,NULL,10);

--select count(*) from EMP

set nocount off