SELECT dname, loc, deptno
FROM dept
order by dname, loc, deptno desc;


SELECT dname 부서명, loc 지역, deptno 부서번호
FROM dept
order by dname, loc, deptno desc;


SELECT dname 부서명, loc 지역, deptno 부서번호
FROM dept
order by 1, 2, 3 desc;


SELECT empno, ename
FROM emp
order by mgr;


SELECT empno
FROM (select empno, ename
        from emp
        order by mgr);
        
        
SELECT mgr
FROM (select empno, ename
        from emp
        order by mgr);
        
        
SELECT job, sal
FROM emp
group by job
having count(*) > 0
order by sal;


SELECT job
FROM emp
group by job
having count(*) > 0
order by sal;


SELECT job, sum(sal) salary_sum
FROM emp
group by job
having sum (sal) > 5000
order by sum (sal);


SELECT player.player_name 선수명, team.team_name 소속팀명
FROM player, team
where team.team_id = player.team_id;


SELECT player.player_name 선수명, team.team_name 소속팀명
FROM player inner join team
on team.team_id = player.team_id;


SELECT player.player_name, player.back_no, player.team_id
        ,team.team_name, team.region_name
FROM player, team
where team.team_id = player.team_id
order by player.player_name;


SELECT A.player_name 선수명, A.back_no 백넘버, A.team_id 팀코드
        ,B.team_name 팀명, B.region_name 연고지
FROM player A, team B
where B.team_id = A.team_id
order by A.player_name;