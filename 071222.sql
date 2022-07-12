SELECT * FROM dept, emp;

SELECT empno, ename, deptno
FROM EMP;

SELECT DISTINCT deptno    --중복을 제거해야 한다. distinct를 사용하여 중복 제거
FROM EMP;

SELECT ename, sal, SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+comm, comm
FROM EMP;

SELECT ename, sal, SAL*12+comm 연수입, comm
FROM EMP;

SELECT 
    * 
FROM EMP
ORDER BY sal desc;

SELECT ename, sal, deptno
FROM EMP
ORDER BY deptno, sal desc;

SELECT * 
FROM EMP
WHERE deptno = 30;

SELECT *
FROM EMP
WHERE empno = 7900;

SELECT *
FROM EMP
WHERE deptno = 30 and job = 'CLERK';    --문자는 작은 따옴표로

SELECT * 
FROM EMP
WHERE sal*12 = 36000;

SELECT
    *
FROM EMP
WHERE ename <='F'; --문자는 작은 따옴표로!

SELECT
    *
FROM EMP
WHERE sal != 3000;

SELECT
    *
FROM EMP
WHERE sal <> 3000;

SELECT
    *
FROM EMP
WHERE sal ^= 3000;

SELECT
    *
FROM EMP
WHERE NOT sal = 3000;

SELECT
    *
FROM EMP
WHERE job = 'MANAGER'
   OR job = 'SALESMAN'
   OR job = 'CLERK';
   
SELECT
    *
FROM EMP
WHERE job IN ('MANAGER', 'SALESMAN', 'CLERK');

SELECT
    *
FROM EMP
WHERE sal >= 2000
  AND sal <= 3000;

SELECT
    *
FROM EMP
WHERE sal BETWEEN 2000 AND 3000;

SELECT
    *
FROM EMP
WHERE ename LIKE 'S%';

SELECT
    *
FROM EMP
WHERE ename LIKE '_L%';

SELECT
    *
FROM EMP
WHERE ename LIKE '%AM%';

SELECT
    *
FROM emp 
WHERE comm IS NULL;

SELECT empno, ename, sal, deptno
    FROM EMP
    WHERE deptno = 10
UNION
    SELECT empno, ename, sal, deptno
         FROM EMP
         WHERE deptno = 20;
         
SELECT ename, UPPER(ename), LOWER(ename), INITCAP(ename)
FROM emp;

SELECT
    *
FROM EMP
WHERE ename = '%SCOTT%';