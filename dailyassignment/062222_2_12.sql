SELECT dname, loc, deptno
FROM dept
order by dname, loc, deptno desc;


SELECT dname �μ���, loc ����, deptno �μ���ȣ
FROM dept
order by dname, loc, deptno desc;


SELECT dname �μ���, loc ����, deptno �μ���ȣ
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


SELECT player.player_name ������, team.team_name �Ҽ�����
FROM player, team
where team.team_id = player.team_id;


SELECT player.player_name ������, team.team_name �Ҽ�����
FROM player inner join team
on team.team_id = player.team_id;


SELECT player.player_name, player.back_no, player.team_id
        ,team.team_name, team.region_name
FROM player, team
where team.team_id = player.team_id
order by player.player_name;


SELECT A.player_name ������, A.back_no ��ѹ�, A.team_id ���ڵ�
        ,B.team_name ����, B.region_name ������
FROM player A, team B
where B.team_id = A.team_id
order by A.player_name;