# SQL Assignment 6 - Employee & Project Management Database

## Overview
This assignment covers comprehensive SQL operations on an employee and project management database system. The questions are divided into two parts: Basic to Intermediate queries (Set A) and Advanced queries for experienced candidates (Set B).

---

## Part A - Basic to Intermediate Queries

### Q1. Write a query to get all employee detail from "EmployeeDetail" table
![Answer](ans/a1.png)

### Q2. Write a query to get only "FirstName" column from "EmployeeDetail" table
![Answer](ans/a2.png)

### Q3. Write a query to get FirstName in upper case as "First Name"
![Answer](ans/a3.png)

### Q4. Write a query to get FirstName in lower case as "First Name"
![Answer](ans/a4.png)

### Q5. Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)
![Answer](ans/a5.png)

### Q6. Get employee detail whose name is "Vikas"
![Answer](ans/a6.png)

### Q7. Get all employee detail from EmployeeDetail table whose "FirstName" start with letter 'a'
![Answer](ans/a7.png)

### Q8. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
![Answer](ans/a8.png)

### Q9. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
![Answer](ans/a9.png)

### Q10. Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
![Answer](ans/a10.png)

### Q11. Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters
![Answer](ans/a11.png)

### Q12. Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
![Answer](ans/a12.png)

### Q13. Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as"
![Answer](ans/a13.png)

### Q14. Get all unique "Department" from EmployeeDetail table
![Answer](ans/a14.png)

### Q15. Get the highest "Salary" from EmployeeDetail table
![Answer](ans/a15.png)

### Q16. Get the lowest "Salary" from EmployeeDetail table
![Answer](ans/a16.png)

### Q17. Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013"
![Answer](ans/a17.png)

### Q18. Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
![Answer](ans/a18.png)

### Q19. Show only time part of the "JoiningDate"
![Answer](ans/a19.png)

### Q20. Get only Year part of "JoiningDate"
![Answer](ans/a20.png)

### Q21. Get only Month part of "JoiningDate"
![Answer](ans/a21.png)

### Q22. Get system date
![Answer](ans/a22.png)

### Q23. Get UTC date
![Answer](ans/a23.png)

### Q24. Get the first name, current date, joiningdate and diff between current date and joining date in months
![Answer](ans/a24.png)

### Q25. Get the first name, current date, joiningdate and diff between current date and joining date in days
![Answer](ans/a25.png)

### Q26. Get all employee details from EmployeeDetail table whose joining year is 2013
![Answer](ans/a26.png)

### Q27. Get all employee details from EmployeeDetail table whose joining month is Jan(1)
![Answer](ans/a27.png)

### Q28. Get how many employee exist in "EmployeeDetail" table
![Answer](ans/a28.png)

### Q29. Select only one/top 1 record from "EmployeeDetail" table
![Answer](ans/a29.png)

### Q30. Select all employee detail with First name "Vikas","Ashish", and "Nikhil"
![Answer](ans/a30.png)

### Q31. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"
![Answer](ans/a31.png)

### Q32. Select first name from "EmployeeDetail" table after removing white spaces from right side
![Answer](ans/a32.png)

### Q33. Select first name from "EmployeeDetail" table after removing white spaces from left side
![Answer](ans/a33.png)

### Q34. Display first name and Gender as M/F (if male then M, if Female then F)
![Answer](ans/a34.png)

### Q35. Select first name from "EmployeeDetail" table prefixed with "Hello"
![Answer](ans/a35.png)

### Q36. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
![Answer](ans/a36.png)

### Q37. Get employee details from "EmployeeDetail" table whose Salary less than 700000
![Answer](ans/a37.png)

### Q38. Get employee details from "EmployeeDetail" table whose Salary between 500000 and 600000
![Answer](ans/a38.png)

---

## Part B - Advanced Queries (For Experienced Candidates)

### Q1. Give records of ProjectDetail table
![Answer](ans/b1.png)

### Q2. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table
![Answer](ans/b2.png)

### Q3. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary
![Answer](ans/b3.png)

### Q4. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary
![Answer](ans/b4.png)

### Q5. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table
![Answer](ans/b5.png)

### Q6. Get department wise average salary from "EmployeeDetail" table order by salary ascending
![Answer](ans/b6.png)

### Q7. Get department wise maximum salary from "EmployeeDetail" table order by salary ascending
![Answer](ans/b7.png)

### Q8. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
![Answer](ans/b8.png)

### Q9. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
![Answer](ans/b9.png)

### Q10. Join both the table that is Employee and ProjectDetail based on some common parameter
![Answer](ans/b10.png)

### Q11. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already
![Answer](ans/b11.png)

### Q12. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project
![Answer](ans/b12.png)

### Q13. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"
![Answer](ans/b13.png)

### Q14. Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail"
![Answer](ans/b14.png)

### Q15. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
![Answer](ans/b15.png)

### Q16. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
![Answer](ans/b16.png)

### Q17. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
![Answer](ans/b17.png)

### Q18. Write down the query to fetch EmployeeName & Project who has assign more than one project
![Answer](ans/b18.png)

### Q19. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName
![Answer](ans/b19.png)

### Q20. Apply Cross Join in Both the tables
![Answer](ans/b20.png)

---

