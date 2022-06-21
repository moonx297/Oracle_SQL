SELECT LENGTH('SQL Expert') LEN
FROM DUAL;  --DUAL은 없는것을 임시로 형식 맞추려고 하는것임!

DESC DUAL;

SELECT * FROM DUAL;

SELECT LEN('SQL Expert') AS Len;

SELECT concat (player_name, ' 축구선수') 선수명
FROM player;

SELECT player_name || ' 축구선수' 선수명
FROM player;

SELECT player_name + ' 축구선수' AS 선수명
FROM player;

SELECT stadium_id, ddd || ')' || tel tel, length (ddd || '-' || tel) T_LEN
FROM stadium;

SELECT stadium_id, ddd || ')' + tel TEL, len (ddd + '-' + tel) T_LEN
FROM stadium;

SELECT ename, round (sal / 12, 1) SAL_ROUND, TRUNC (sal / 12, 1) SAL_TRUNC
FROM EMP;