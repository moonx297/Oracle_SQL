SELECT team_id ��ID,
        to_number(zip_code1, '999') + to_number (zip_code2, '999') �����ȣ��
FROM team
ORDER BY team_id;

SELECT ename
    , CASE
            WHEN SAL > 2000 THEN SAL
            ELSE 2000
        END AS REVISED_SALARY
FROM EMP;

SELECT LOC,
        CASE LOC
            WHEN 'NEW YORK' THEN 'EAST'
            WHEN 'BOSTON' THEN 'EAST'
            WHEN 'CHICAGO' THEN 'CENTER'
            WHEN 'DALLAS' THEN 'CENTER'
            ELSE 'ETC'
        END AS AREA
FROM DEPT;

SELECT ENAME,
        CASE
            WHEN SAL >=3000 THEN 'HIGH'
            WHEN SAL >=1000 THEN 'MID'
            ELSE 'LOW'
            END AS SALARY_GRADE
FROM EMP;