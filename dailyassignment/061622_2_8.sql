SELECT PLAYER_NAME 선수명, POSITION 포지션, BACK_NO 백넘버, HEIGHT 키
FROM PLAYER
WHERE TEAM_ID = K02;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02';

SELECT
    *
FROM player;

SELECT PLAYER_NAME 선수명, POSITION 포지션, BACK_NO 백넘버, HEIGHT 키
FROM PLAYER
WHERE POSITION = 'MF';

SELECT PLAYER_NAME 선수명, POSITION 포지션, BACK_NO 백넘버, HEIGHT 키
FROM PLAYER
WHERE HEIGHT >= 170;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id IN ('K02', 'K07');

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE (JOB, DEPTNO) IN (('MANAGER', 20), ('CLERK', 30));

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB IN ('MANAGER', 'CLERK') AND DEPTNO IN (20, 30);

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE POSITION LIKE 'MF';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE PLAYER_NAME LIKE '장%';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE PLAYER_NAME LIKE '장_호';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE PLAYER_NAME LIKE '%호';

