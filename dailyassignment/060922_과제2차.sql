SELECT team_id ��ID, to_number (zip_code1, '999') + to_number (zip_code2, '999') �����ȣ��
FROM team;

SELECT SYSDATE
FROM DUAL;

SELECT ename �����, hiredate �Ի�����,
        extract (year from hiredate) �Ի�⵵,
        extract (month from hiredate) �Ի��,
        extract (day from hiredate) �Ի���
FROM EMP;

SELECT ename �����, hiredate �Ի�����,
    to_number (to_char (hiredate, 'YYYY')) �Ի�⵵,
    to_number (to_char (hiredate, 'MM')) �Ի��,
    to_number (to_char (hiredate, 'DD')) �Ի���
FROM emp;

SELECT to_char (sysdate, 'YYYY/MM/DD') ��¥,
        to_char (sysdate, 'YYYY.MON, DAY') ������
FROM DUAL;

SELECT to_char (12345789 / 1200, '$999,999,999.99') ȯ���ݿ��޷�,
        to_char (12345789, 'L999,999,999') ��ȭ
FROM DUAL;

SELECT ename, round (sal / 12) SAL_ROUND, ceil (sal / 12) SAL_CEIL
FROM EMP;