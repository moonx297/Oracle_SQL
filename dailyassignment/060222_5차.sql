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

--** ������
SELECT  --���� ������ ���� 
    *
FROM employees A
WHERE A.salary = (SELECT salary    --���� ������ ������
                  FROM employees
                  WHERE last_name = 'De Haan'); --������ ���� �ʴ� ������ �Ѹ��̱� ������ = ��� ����.
                  
--���� �ڵ�� ������ ����� ��µǴµ�, ���� ����� �𸦶�, �ؿ��� ����� �˶�

SELECT  
    *
FROM employees A
WHERE A.salary = 17000;

--**������
SELECT          --���� ������ ���� 
    *
FROM employees A
WHERE A.salary = (SELECT salary  
                  FROM employees
                  WHERE last_name = 'Taylor'); -- ������ ���� ������ �������̱� ������.
                  
SELECT          --���� ������ ���� 
    *
FROM employees A
WHERE A.salary IN (SELECT salary  
                  FROM employees
                  WHERE last_name = 'Taylor'); -- ������ �ȳ��� ������ =�� �ƴ� IN�� ����߱� ������.                  
     
SELECT  
    *
FROM employees A
WHERE A.salary IN (SELECT MIN(salary) �����޿� 
                  FROM employees
                  GROUP BY department_id
                  )
ORDER BY a.salary DESC;

SELECT  
    *
FROM employees A
WHERE (A.job_id, a.salary) IN (
                                SELECT job_id, MIN(salary) �׷캰_�޿� 
                                FROM employees
                                GROUP BY job_id
                               )
ORDER BY a.salary;

SELECT
    *
FROM employees A,
                ( SELECT department_id
                  FROM departments
                  WHERE department_name ='IT' ) B       --B��� ���̺��� ���� ���̺��̴�.-> B�� �����(�ζ��κ�) 
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
