SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where HEIGHT BETWEEN 170 AND 180;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where position = null;

SELECT player_name ������, position ������, team_id ��ID
FROM player
where position is null;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where team_id = 'K02' AND height >= 170;   -- WHERE �������� , �� �ƴ϶� AND�� �Է��ؾ��ϴ±���

SELECT team_id ��ID, player_NAME ������, position ������, back_no ��ѹ�, height Ű
FROM player
where team_id IN ('K02', 'K07') AND position = 'MF';   

SELECT team_id ��ID, player_NAME ������, position ������, back_no ��ѹ�, height Ű
FROM player
where team_id IN ('K02', 'K07') AND position = 'MF' AND HEIGHT BETWEEN 170 AND 180;  

SELECT team_id ��ID, player_NAME ������, position ������, back_no ��ѹ�, height Ű
    FROM player
    WHERE
    (team_id = 'K02' 
    OR team_id = 'K07') AND (
    position = 'MF'
    AND HEIGHT >= 170
    AND HEIGHT <=180);  