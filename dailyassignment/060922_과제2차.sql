SELECT team_id 팀ID, to_number (zip_code1, '999') + to_number (zip_code2, '999') 우편번호합
FROM team;

SELECT SYSDATE
FROM DUAL;

SELECT ename 사원명, hiredate 입사일자,
        extract (year from hiredate) 입사년도,
        extract (month from hiredate) 입사월,
        extract (day from hiredate) 입사일
FROM EMP;

SELECT ename 사원명, hiredate 입사일자,
    to_number (to_char (hiredate, 'YYYY')) 입사년도,
    to_number (to_char (hiredate, 'MM')) 입사월,
    to_number (to_char (hiredate, 'DD')) 입사일
FROM emp;

SELECT to_char (sysdate, 'YYYY/MM/DD') 날짜,
        to_char (sysdate, 'YYYY.MON, DAY') 문자형
FROM DUAL;

SELECT to_char (12345789 / 1200, '$999,999,999.99') 환율반영달러,
        to_char (12345789, 'L999,999,999') 원화
FROM DUAL;

SELECT ename, round (sal / 12) SAL_ROUND, ceil (sal / 12) SAL_CEIL
FROM EMP;