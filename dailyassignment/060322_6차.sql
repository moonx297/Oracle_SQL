UPDATE departments 
        SET (manager_id, location_id) = 
        (SELECT manager_id, location_id FROM departments  WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

--department_id���� null�� �Էµ� �� ���� ������ ���� �߻�!
UPDATE departments
SET department_id = null
WHERE department_name = 'Sample_Dept';

--�Ϲ����� ���
DELETE FROM departments 
WHERE department_name = 'Sample_Dept';

--�������� ����� ���
DELETE FROM departments 
WHERE department_id IN   (SELECT department_id
                            FROM departments
                            WHERE department_name = 'Sample_Dept');

SELECT *
FROM departments
WHERE department_name = 'Sample_Dept';

COMMIT;

--1. �⺻Ű ���� ���� - ������ �ߺ� ����
INSERT INTO departments
VALUES(100, 'Sample_Dept', 200, 1700);   --100�� �̹� �����ؼ� ������ ���. �ߺ��� ������� �ʴ´�.

INSERT INTO departments
VALUES(1000, 'Sample_Dept', 200, 1700);   --1000�� �������� �ʴ� Value�� ����.

--2. �ܷ�Ű ���� ���� - �� ���� �θ� ���̺��� ���� ���� ���� �ݵ�� ����
--111�� �θ� ���̺��� �࿡ �������� ����
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES(273, 'Sample_Dept', 200, 111); --�θ����� 111�̶�°� ���µ� ����������� �ϴ� ������ ���.

--3. ����Ű : �ߺ��� ������� ������ (NULL�� ��� ����)
INSERT INTO employees (employee_id, first_name, email, phone_number, hire_date, job_id, salary)
VALUES(207, 'first_name', 'last_name', 'SKING', '111.11.11', to_date('030617', 'YYMMDD'), 'IT_PROG', 6000);

SELECT    *
FROM employees
WHERE email = 'SKING';

--4. NOT NULL : null ���� ������� �ʴ´�.
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES(273, null, 200, 700);

--5. CHECK : ������ ���� �� ������ ���� ���
--�ǳ��� ���� 0�� �ʰ��ϴ� ���� ���
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES(209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617', 'YYMMDD'), 'IT_PROG', 0);

INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 0);

--���̺� ����
CREATE TABLE sample_product
                ( product_id number,
                  product_name VARCHAR2(30),
                  manu_date date
                 ); 
                 
CREATE TABLE sample_product
                ( product_id number,
                  product_name VARCHAR2(30),
                  manu_date date
                 ); 
                       
INSERT INTO (product_id, product_id,product_id, product_name,product_name,product_name, manu_date,manu_date,manu_date)
VALUES (1,2,3, television, washer, cleaner, 14/01/01, 15/01/01, 16/01/01)
FROM sample_product;

INSERT INTO sample_product 
VALUES (1,'television', to_date('140101', 'YYMMDD'));
INSERT INTO sample_product 
VALUES (2,'washer', to_date('150101', 'YYMMDD'));
INSERT INTO sample_product 
VALUES (3,'cleaner', to_date('160101', 'YYMMDD'));

SELECT
    *
FROM sample_product;

ALTER TABLE sample_product ADD(factory varchar(10));

ALTER TABLE sample_product MODIFY(factory char(8));

ALTER TABLE sample_product RENAME COLUMN factory TO factory_name;

--������
ALTER TABLE sample_product DROP COLUMN factory_name;
--���븸 ����
TRUNCATE TABLE sample_product;
--���̺����
DROP TABLE sample_product;
