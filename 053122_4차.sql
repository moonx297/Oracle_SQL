SELECT salary
FROM employees;

SELECT COUNT(salary)
FROM employees;

SELECT SUM(salary) 합계, (sum(salary)/count(salary)) 평균
FROM employees;

SELECT MAX(salary) 최대값, MIN(salary) 최소값, MAX(first_name) 최대문자값, MIN(first_name)최소문자값
FROM employees;

SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

SELECT job_id job_id_대그룹, 
        manager_id manager_id_중그룹,
        sum(salary) 그룹핑_총급여, 
        avg(salary) 그룹핑_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id, manager_id
ORDER BY 그룹핑_총급여 DESC, 그룹핑_평균급여;
--HAVING (job_id, AVG(salary), SUM(salary)) 

SELECT job_id 직무, 
        SUM(salary) 직무별_총급여, 
        AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

SELECT A.first_name, a.last_name, B.*
FROM employees A, job_history B
WHERE A.employee_id = b.employee_id     --반드시 일치해야함 = 
AND A.employee_id = 101;

SELECT
    *
FROM employees A, departments B --두테이블 결합!
WHERE a.department_id = b.department_id;  --조건은 ID가 같은 거에 대해서!

SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id     --A가 B를 물었고
AND b.location_id = c.location_id;          --B가 C를 물었다. 관계가 얽히게!

SELECT COUNT(*) 조인된건수
FROM employees A, departments B 
WHERE a.department_id = b.department_id; 

SELECT *
FROM employees;

SELECT a.department_id, a.first_name, a.last_name, B.department_id, B.department_name 
FROM employees A, departments B 
WHERE a.department_id = b.department_id(+)
ORDER BY a.employee_id;

SELECT a.manager_id
FROM employees A, departments B 
WHERE a.department_id = b.department_id(+)
ORDER BY a.employee_id;

