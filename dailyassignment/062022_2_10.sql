SELECT COUNT (*) ��ü���, COUNT (HEIGHT) Ű�Ǽ�, MAX (HEIGHT) �ִ�Ű, MIN (HEIGHT) �ּ�Ű, ROUND (AVG (HEIGHT),2) ���Ű
FROM PLAYER;

SELECT POSITION ������, AVG (HEIGHT) ���Ű
FROM PLAYER
GROUP BY ������;

SELECT POSITION ������, COUNT (*) �ο���, 
       COUNT (HEIGHT) Ű���, 
       MAX (HEIGHT) �ִ�Ű, 
       MIN (HEIGHT) �ּ�Ű, 
       ROUND (AVG (HEIGHT))
FROM PLAYER
GROUP BY POSITION;

SELECT POSITION ������, ROUND (AVG(HEIGHT),2) ���Ű
FROM PLAYER
GROUP BY POSITION
HAVING AVG(HEIGHT)>=180;

SELECT POSITION ������, AVG(HEIGHT) ���Ű
FROM PLAYER
HAVING AVG(HEIGHT)>=180
GROUP BY POSITION;

SELECT TEAM_ID ��ID, COUNT (*) �ο���
FROM PLAYER
GROUP BY TEAM_ID
HAVING TEAM_ID IN ('K02', 'K09');

SELECT POSITION ������, ROUND(AVG(HEIGHT),2) ���Ű, MAX(HEIGHT)
FROM PLAYER
GROUP BY POSITION
HAVING MAX(HEIGHT)>=190;

SELECT ENAME �����, DEPTNO �μ���ȣ, EXTRACT (MONTH FROM HIREDATE) �Ի��, SAL �޿�
FROM EMP;