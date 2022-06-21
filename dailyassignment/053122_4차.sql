SELECT salary
FROM employees;

SELECT COUNT(salary)
FROM employees;

SELECT SUM(salary) �հ�, (sum(salary)/count(salary)) ���
FROM employees;

SELECT MAX(salary) �ִ밪, MIN(salary) �ּҰ�, MAX(first_name) �ִ빮�ڰ�, MIN(first_name)�ּҹ��ڰ�
FROM employees;

SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

SELECT job_id job_id_��׷�, 
        manager_id manager_id_�߱׷�,
        sum(salary) �׷���_�ѱ޿�, 
        avg(salary) �׷���_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id, manager_id
ORDER BY �׷���_�ѱ޿� DESC, �׷���_��ձ޿�;
--HAVING (job_id, AVG(salary), SUM(salary)) 

SELECT job_id ����, 
        SUM(salary) ������_�ѱ޿�, 
        AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

SELECT A.first_name, a.last_name, B.*
FROM employees A, job_history B
WHERE A.employee_id = b.employee_id     --�ݵ�� ��ġ�ؾ��� = 
AND A.employee_id = 101;

SELECT
    *
FROM employees A, departments B --�����̺� ����!
WHERE a.department_id = b.department_id;  --������ ID�� ���� �ſ� ���ؼ�!

SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id     --A�� B�� ������
AND b.location_id = c.location_id;          --B�� C�� ������. ���谡 ������!

SELECT COUNT(*) ���εȰǼ�
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

