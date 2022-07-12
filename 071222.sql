SELECT * FROM dept, emp;

SELECT empno, ename, deptno
FROM EMP;

SELECT DISTINCT deptno    --�ߺ��� �����ؾ� �Ѵ�. distinct�� ����Ͽ� �ߺ� ����
FROM EMP;

SELECT ename, sal, SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+comm, comm
FROM EMP;

SELECT ename, sal, SAL*12+comm ������, comm
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
WHERE deptno = 30 and job = 'CLERK';    --���ڴ� ���� ����ǥ��

SELECT * 
FROM EMP
WHERE sal*12 = 36000;

SELECT
    *
FROM EMP
WHERE ename <='F'; --���ڴ� ���� ����ǥ��!

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