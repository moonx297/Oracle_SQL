SELECT department_id 
FROM employees
UNION
SELECT department_id 
FROM departments;

SELECT department_id 
FROM employees
UNION ALL
SELECT department_id 
FROM departments;

SELECT department_id 
FROM employees
INTERSECT
SELECT department_id 
FROM departments;

SELECT department_id 
FROM departments
MINUS
SELECT department_id 
FROM employees;

--** 단일행
SELECT  --메인 쿼리는 왼쪽 
    *
FROM employees A
WHERE A.salary = (SELECT salary    --서브 쿼리는 오른쪽
                  FROM employees
                  WHERE last_name = 'De Haan'); --에러가 나지 않는 이유는 한명이기 때문에 = 사용 가능.
                  
--위의 코드와 동일한 결과가 출력되는데, 위는 결과를 모를때, 밑에는 결과를 알때

SELECT  
    *
FROM employees A
WHERE A.salary = 17000;

--**다중행
SELECT          --메인 쿼리는 왼쪽 
    *
FROM employees A
WHERE A.salary = (SELECT salary  
                  FROM employees
                  WHERE last_name = 'Taylor'); -- 에러가 나는 이유는 여러명이기 때문에.
                  
SELECT          --메인 쿼리는 왼쪽 
    *
FROM employees A
WHERE A.salary IN (SELECT salary  
                  FROM employees
                  WHERE last_name = 'Taylor'); -- 에러가 안나는 이유는 =이 아닌 IN을 사용했기 때문에.                  
     
SELECT  
    *
FROM employees A
WHERE A.salary IN (SELECT MIN(salary) 최저급여 
                  FROM employees
                  GROUP BY department_id
                  )
ORDER BY a.salary DESC;

SELECT  
    *
FROM employees A
WHERE (A.job_id, a.salary) IN (
                                SELECT job_id, MIN(salary) 그룹별_급여 
                                FROM employees
                                GROUP BY job_id
                               )
ORDER BY a.salary;

SELECT
    *
FROM employees A,
                ( SELECT department_id
                  FROM departments
                  WHERE department_name ='IT' ) B       --B라는 테이블은 가상 테이블이다.-> B는 가상뷰(인라인뷰) 
WHERE a.department_id = B.department_id;

INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (271, 'Sample_Dept', 200, 1700);

SELECT
    *
FROM departments
ORDER BY department_id DESC;

INSERT INTO departments 
VALUES (272, 'Sample_Dept', 200, 1700);

commit;

UPDATE departments 
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';

COMMIT;
