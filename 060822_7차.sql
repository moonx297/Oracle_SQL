SELECT LENGTH('SQL Expert') LEN
FROM DUAL;  --DUAL�� ���°��� �ӽ÷� ���� ���߷��� �ϴ°���!

DESC DUAL;

SELECT * FROM DUAL;

SELECT LEN('SQL Expert') AS Len;

SELECT concat (player_name, ' �౸����') ������
FROM player;

SELECT player_name || ' �౸����' ������
FROM player;

SELECT player_name + ' �౸����' AS ������
FROM player;

SELECT stadium_id, ddd || ')' || tel tel, length (ddd || '-' || tel) T_LEN
FROM stadium;

SELECT stadium_id, ddd || ')' + tel TEL, len (ddd + '-' + tel) T_LEN
FROM stadium;

SELECT ename, round (sal / 12, 1) SAL_ROUND, TRUNC (sal / 12, 1) SAL_TRUNC
FROM EMP;