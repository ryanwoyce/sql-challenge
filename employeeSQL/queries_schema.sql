--Analysis 1 
Select "employees".emp_no, "employees".last_name, "employees".first_name, "employees".sex, "salaries".salary
From "employees"
Inner Join "salaries" ON
"salaries".emp_no="employees".emp_no;

--Analysis 2
Select first_name, last_name, hire_date
From "employees" 
Where hire_date Like '%1986'

--Analysis 3
Select "dept_manager".emp_no, "Departments".dept_no, "Departments".dept_name, "employees".first_name, "employees".last_name
From "dept_manager"
Join "Departments" on "dept_manager".dept_no="Departments".dept_no
Join "employees" on "dept_manager".emp_no="employees".emp_no

--Analysis 4
Select "dept_emp".dept_no, "dept_emp".emp_no, "employees".first_name, "employees".last_name, "Departments".dept_name
From "dept_emp"
Join "employees" on "dept_emp".emp_no="employees".emp_no
Join "Departments" on "dept_emp".dept_no="Departments".dept_no

--Analysis 5
Select first_name, last_name, sex
From "employees"
Where first_name = 'Hercules'
And last_name like 'B%'

--Analysis 6
Select "dept_emp".dept_no, "employees".emp_no, "employees".first_name, "employees".last_name
From "dept_emp"
Join "employees" On "dept_emp".emp_no="employees".emp_no
Where dept_no = 'd007'

--Analysis 7
Select "dept_emp".emp_no, "Departments".dept_name, "employees".first_name, "employees".last_name
From "dept_emp"
Join "Departments" on "dept_emp".dept_no="Departments".dept_no
Join "employees" on "dept_emp".emp_no="employees".emp_no
Where dept_name = 'Sales' Or dept_name = 'Development'

--Analysis 8 
Select last_name, Count(emp_no) as "Count"
From "employees"
Group By last_name
Order By "Count" DESC