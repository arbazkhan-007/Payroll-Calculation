create database le_11_project;
use le_11_project;
create view department_view as select dept_id, dept_name, location, manager_id, elocation_id from le_11_project.department;
create view employee_view as select emp_id, f_name, l_name, job_id, salary, manager_id, dept_id from le_11_project.employee;
delimiter $$
create procedure salarygrtthan250000 ()
begin
select * from le_11_project.employee where salary> 250000;
end $$
call salarygrtthan250000 ();
/* Write a query to create and execute a stored procedure with one parameter using the order by function in descending order of the salary earned */
delimiter //
create procedure salary  (in var int)
begin
select f_name, l_name, salary from le_11_project.employee order by salary desc limit var;
end //
call salary (3);