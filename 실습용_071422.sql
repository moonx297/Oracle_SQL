SELECT LENGTH('한글'), LENGTHB('한글') --LENGRHB : BYTE로 따진다.
FROM DUAL;

SELECT LENGTHB(CONVERT('한글', 'KO16MSWIN949')) LENGTHB_1,
       LENGTHB(CONVERT('한글 HANGUL', 'KO16MSWIN949')) LENGTHB_2
FROM DUAL;

SELECT TO_CHAR (SYSDATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"')
FROM DUAL;

SELECT SYSDATE,
    TO_CHAR(SYSDATE, 'MM') MM,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') MON_KOR,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') MON_JPN,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') MON_ENG,
    TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=KOREAN') MONTH_KOR,
    TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=JAPANESE') MONTH_JPN,
    TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=ENGLISH') MONTH_KOR
FROM DUAL;

--여러 가지 숫자 형식 사용하여 급여 출력하기
SELECT SAL,
    TO_CHAR(SAL, '$999,999') SAL_$,
    TO_CHAR(SAL, 'L999,999') SAL_L,
    TO_CHAR(SAL, '999,999.00') S999,999.00,
    TO_CHAR(SAL, '000999999.99') S000999999_99,
    TO_CHAR(SAL, '999,999,00') S999,999,00
FROM EMP;

SELECT
    TO_CHAR(589.23, '999,999.00') SAL_1,
    TO_CHAR(589.23, '999,999.99') SAL_1_1,
    TO_CHAR( '000999999.99') SAL_2,
    TO_CHAR( '000999999.00') SAL_2_1,
    TO_CHAR(589.23, '999,999,00') SAL_3
FROM DUAL;

SELECT *
FROM EMP
WHERE HIREDATE >= 1981.06.01;

SELECT
    *
FROM emp
WHERE hiredate > TO_DATE('1981/06/01', 'YYYY/MM/DD');

--NVL
SELECT empno, ename, sal, comm, sal+comm,
       NVL (comm, 0), --null로 처리할 바에는 0을 입력하라
       SAL+NVL (comm, 0) 
FROM emp;

--NVL2
SELECT empno, ename, comm,
       NVL2 (comm, 'o', 'x'),
       NVL2 (comm, sal*12+comm, sal*12) annsal 
FROM emp;

--DECODE 함수 - 
SELECT empno, ename, job, sal,
    DECODE(job,
          'MANAGER', sal*1.1,
          'SALESMAN', sal*1.05,
          'ANALYST', sal,
          sal*1.03) upsal
FROM emp;

--다중행
SELECT sal FROM emp;

--단행
SELECT SUM(sal) FROM emp;

SELECT COUNT(*)
FROM EMP;

SELECT COUNT(comm)
FROM EMP;

SELECT COUNT(comm)
FROM EMP
WHERE comm IS NOT NULL;

SELECT COUNT(*)
FROM EMP
WHERE deptno = 30;

SELECT MAX(hiredate)
FROM emp
WHERE deptno = 20;

SELECT deptno, job, AVG(sal)
FROM emp
GROUP BY deptno, job
  HAVING AVG(sal) >= 2000
ORDER BY deptno, job;

SELECT *
FROM (SELECT deptno, job, sal
     FROM emp)
PIVOT (MAX(sal)
     FOR deptno IN(10,20,30)    --행열 변환. 
       ) 
ORDER BY job;

--WHERE 절을 사용하면 GROUP BY 보다 우선 처리한다.
SELECT deptno, job, AVG(sal)
FROM emp
WHERE sal <= 3000
GROUP BY deptno, job
  HAVING AVG(sal) >= 2000
ORDER BY deptno, job;

--JOIN
SELECT e.empno, e.ename, d.deptno, d.dname, d.loc -- 3. 이 속성들의 데이터들을 보여줘
    FROM emp e, dept d      -- 1. 이 두 테이블을 합칠게
    WHERE e.deptno = d.deptno   -- 2. 양쪽 테이블의 같은 필드가 있나? 그 필드의 속성과 데이터가 같으면
    ORDER BY d.deptno, e.empno;
    
    
SELECT
    *
FROM emp
WHERE SAL > (SELECT sal
             FROM emp
             WHERE ename = 'JONES');
--실무형 쿼리       
SELECT e.empno, e. ename, d.deptno, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
    AND e.deptno = 20
    AND e.sal > (SELECT AVG(sal)
             FROM emp);