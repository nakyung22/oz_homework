use fishbread_db;

-- 1. employees 테이블을 생성해주세요
create table employees (
id int auto_increment primary key,
name varchar(100),
position varchar(100),
salary decimal(10, 2)
);

-- 2. 직원 데이터를 employees에 추가해주세요
insert into employees (name, position, salary) values ('혜린', 'PM', 90000);
insert into employees (name, position, salary) values ('은우', 'Frontend', 80000);
insert into employees (name, position, salary) values ('가을', 'Backend', 92000);
insert into employees (name, position, salary) values ('지수', 'Frontend', 78000);
insert into employees (name, position, salary) values ('민혁', 'Frontend', 96000);
insert into employees (name, position, salary) values ('하온', 'Backend', 130000);

-- 3. 모든 직원의 이름과 연봉 정만을 조회하는 쿼리를 작성해주세요
select * from employees;

-- 4. Frontend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회하세요
select name, salary from employees where position = 'Frontend' and salary <=90000;

-- 5. PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요
Update employees set salary = salary * 1.10 where position = 'PM';
select * from employees where position = 'Quality Assurance';

-- 6. 모든 Backend 직책을 가진 직원의 연봉을 5% 인상하세요
update employees set salary = salary * 1.05 where position = 'Backend';

-- 7. 민혁 사원의 데이터를 삭제하세요
delete from employees where name = '민혁';

-- 8. 모든 직원을 position별로 그룹화하여 각 직책의 평균 연봉을 계산하세요
select position, avg(salary) as average_salary from employees group by position;

-- 9 employees 테이블을 삭제하세요
drop table employees;

