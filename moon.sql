SELECT PLAYER_NAME ������, POSITION ������, BACK_NO ��ѹ�, HEIGHT Ű
FROM PLAYER
WHERE TEAM_ID = K02;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02';

SELECT
    *
FROM player;

SELECT PLAYER_NAME ������, POSITION ������, BACK_NO ��ѹ�, HEIGHT Ű
FROM PLAYER
WHERE POSITION = 'MF';

SELECT PLAYER_NAME ������, POSITION ������, BACK_NO ��ѹ�, HEIGHT Ű
FROM PLAYER
WHERE HEIGHT >= 170;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id IN ('K02', 'K07');

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE (JOB, DEPTNO) IN (('MANAGER', 20), ('CLERK', 30));

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB IN ('MANAGER', 'CLERK') AND DEPTNO IN (20, 30);

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE POSITION LIKE 'MF';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE PLAYER_NAME LIKE '��%';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE PLAYER_NAME LIKE '��_ȣ';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE PLAYER_NAME LIKE '%ȣ';

