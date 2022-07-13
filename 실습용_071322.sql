SELECT
    *
FROM emp 
WHERE ename LIKE 'A%';

SELECT
*
FROM EMP
WHERE ename <='G';

SELECT
    *
FROM emp
WHERE UPPER(ename) = UPPER ('scott');

select upper(ename) from emp;

SELECT
    *
FROM emp
WHERE UPPER(ename) LIKE UPPER ('%scott%');

SELECT
    *
FROM EMP
WHERE LENGTH (ename) >= 5;

SELECT LENGTH('한글'), LENGTHB('한글') --LENGRHB : BYTE로 따진다.
FROM DUAL;

SELECT ename, SUBSTR(ename,1,2), SUBSTR(ename,3,2), SUBSTR(ename,5)
FROM emp;

SELECT INSTRB('HELLO ORACLE!','L') 예시_1,
       INSTRB('HELLO ORACLE!','L',5) 예시_2,
       INSTRB('HELLO ORACLE!','L',2,3) 예시_3
FROM DUAL;

SELECT '010-1234-5678' REPLACE_BEFORE,
        REPLACE('010-1234-5678', '-', ' ') REPLACE_1,
        REPLACE('010-1234-5678', '-') REPLACE_2
FROM DUAL;

SELECT 
    RPAD('971233-2', 14, '*') RPAD_JMNO,
    RPAD('010-1234-', 13, '*') RPAD_PNO
FROM DUAL;

SELECT
    rpad('791225-2', 14, '*') as rpad_jmon,
    rpad('010-1234-', 13, '*') as rpad_jmon
FROM dual;

SELECT CONCAT(empno, ename),
       CONCAT(empno, CONCAT (' : ', ename))
FROM emp
WHERE ename = 'SCOTT';

SELECT '[' || TRIM ('_Oracle_') || ']' TRIM,
       '[' || LTRIM ('<_Oracle_>') || ']' TRIM_원본,
       '[' || LTRIM ('<_Oracle_>', '_<') || ']' LEFTTRIM_실행,
       '[' || RTRIM ('<_Oracle_>') || ']' TRIM_원본,
       '[' || RTRIM ('<_Oracle_>', '_>') || ']' RIGHTTRIM_실행
FROM dual;

SELECT ROUND (1234.5678) ROUND,
       ROUND (1234.5678, 0) ROUND0,
       ROUND (1234.5678, 1) ROUND1,
       ROUND (1234.5678, 2) ROUND2,
       ROUND (1234.5678, -1) ROUND_MINUS3,
       ROUND (1234.5678, -2) ROUND_MINUS4
FROM dual;

SELECT SYSDATE,
    ADD_MONTHS(SYSDATE, 3)
FROM dual;

SELECT ename, hiredate, ADD_MONTHS(hiredate, 120) WORK_10_YEAR
FROM emp;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') 현재날짜시간
FROM DUAL;

SELECT SYSDATE,
        TO_CHAR(SYSDATE, 'MM') MM,
        TO_CHAR(SYSDATE, 'MON') MON,
        TO_CHAR(SYSDATE, 'MONTH') MONTH,
        TO_CHAR(SYSDATE, 'DD') DD,
        TO_CHAR(SYSDATE, 'DY') DY,
        TO_CHAR(SYSDATE, 'DAY') DAY
FROM dual;