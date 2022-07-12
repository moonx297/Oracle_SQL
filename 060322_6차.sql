UPDATE departments 
        SET (manager_id, location_id) = 
        (SELECT manager_id, location_id FROM departments  WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

--department_id에는 null이 입력될 수 없기 때문에 오류 발생!
UPDATE departments
SET department_id = null
WHERE department_name = 'Sample_Dept';

--일반적인 방법
DELETE FROM departments 
WHERE department_name = 'Sample_Dept';

--서브쿼리 사용한 방법
DELETE FROM departments 
WHERE department_id IN   (SELECT department_id
                            FROM departments
                            WHERE department_name = 'Sample_Dept');

SELECT *
FROM departments
WHERE department_name = 'Sample_Dept';

COMMIT;

--1. 기본키 제약 조건 - 데이터 중복 불허
INSERT INTO departments
VALUES(100, 'Sample_Dept', 200, 1700);   --100은 이미 존재해서 에러가 뜬다. 중복은 허락하지 않는다.

INSERT INTO departments
VALUES(1000, 'Sample_Dept', 200, 1700);   --1000은 존재하지 않는 Value라서 가능.

--2. 외래키 제약 조건 - 열 값이 부모 테이블의 참조 열의 값을 반드시 참조
--111은 부모 테이블의 행에 존재하지 않음
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES(273, 'Sample_Dept', 200, 111); --부모한테 111이라는게 없는데 집어넣으려고 하니 에러가 뜬다.

--3. 유일키 : 중복은 허락하지 않지만 (NULL값 허용 가능)
INSERT INTO employees (employee_id, first_name, email, phone_number, hire_date, job_id, salary)
VALUES(207, 'first_name', 'last_name', 'SKING', '111.11.11', to_date('030617', 'YYMMDD'), 'IT_PROG', 6000);

SELECT    *
FROM employees
WHERE email = 'SKING';

--4. NOT NULL : null 값을 허용하지 않는다.
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES(273, null, 200, 700);

--5. CHECK : 범위나 조건 등 지정된 값만 허용
--맨끝에 값은 0을 초과하는 값만 허용
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES(209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617', 'YYMMDD'), 'IT_PROG', 0);

INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary)
VALUES (209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617','YYMMDD'), 'IT_PROG', 0);

--테이블 생성
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

--열삭제
ALTER TABLE sample_product DROP COLUMN factory_name;
--내용만 삭제
TRUNCATE TABLE sample_product;
--테이블삭제
DROP TABLE sample_product;
