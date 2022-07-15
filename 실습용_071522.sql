-- 조인
SELECT *
FROM emp e, dept d
WHERE e.deptno = d.deptno
ORDER BY empno;

SELECT
    *
FROM emp
WHERE sal IN (SELECT MAX(sal)
              FROM emp
              GROUP BY deptno);
              
SELECT
    *
FROM emp
WHERE sal > ANY (SELECT sal
                 FROM emp
                 WHERE deptno = 30);
                 
CREATE TABLE dept_tcl
        as select *
           from dept;
           
SELECT
    *
FROM dept;

SELECT
    *
FROM dept_tcl;

INSERT INTO dept_tcl values(50, 'DATABASE', 'SEOUL');
UPDATE dept_tcl SET loc = 'BUSAN' WHERE deptno = 40;
DELETE FROM dept_tcl WHERE dname = 'RESEARCH';

ROLLBACK;
COMMIT;


CREATE INDEX emp_ix01 ON emp(hiredate);

SELECT * FROM user_ind_columns;

SELECT /*+ INDEX(e emp_ix01) */ e.*
    FROM emp e
    WHERE hiredate BETWEEN '1981-01-01'
                       AND '1981-12-31';
DROP INDEX emp_ix01;

CREATE VIEW vw_em20
    AS (SELECT empno, ename, job, deptno 
        FROM emp 
        WHERE deptno = 20);
SELECT * FROM user_views;
SELECT * FROM vw_em20;    

DROP view vw_em20;

CREATE TABLE dept_fk(
    deptno number(2) constraint deptfk_deptno_pk primary key,
    dname varchar2(14),
    loc varchar2(13)
);
desc dept_fk;
--foreign key와 제약조건 둘 다 정해주기
CREATE TABLE emp_fk(
    empno number(4) constraint empfk_empno_pk primary key,
    ename varchar2(10),
    job VARCHAR2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2), 
    comm number(7,2),
    deptno number(2) constraint empfk_deptno references dept_fk(deptno)
);
desc emp_fk;

create user MyShop password 12345;