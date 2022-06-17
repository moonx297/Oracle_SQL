SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where HEIGHT BETWEEN 170 AND 180;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where position = null;

SELECT player_name 선수명, position 포지션, team_id 팀ID
FROM player
where position is null;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where team_id = 'K02' AND height >= 170;   -- WHERE 문에서는 , 가 아니라 AND를 입력해야하는구나

SELECT team_id 팀ID, player_NAME 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where team_id IN ('K02', 'K07') AND position = 'MF';   

SELECT team_id 팀ID, player_NAME 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where team_id IN ('K02', 'K07') AND position = 'MF' AND HEIGHT BETWEEN 170 AND 180;  

SELECT team_id 팀ID, player_NAME 선수명, position 포지션, back_no 백넘버, height 키
    FROM player
    WHERE
    (team_id = 'K02' 
    OR team_id = 'K07') AND (
    position = 'MF'
    AND HEIGHT >= 170
    AND HEIGHT <=180);  