# Database Creation and Manipulation Labs
Scenario: A local delivery company has asked me create a database with desgnated tables to be able to store information about the company(empoyees, customers, finances). The problem they have is having to document everything on paper, they now wnat to store information in a efficient way, A way that will not only allow them to store information, a way that will also allow them to retrieve inforation quickly.

My approach: I will create these tables with efficiency in mind, I wnat to link certain tables to one another so that one can easily use a join query to fetch all information linked to the "id" maybe, how I will do this is by using foreign keys, linking a primary key form another table to another table which has its information and its own primary key this will allow me to easily pull all data using that foreign key. Here is a simplified example of this, imagine that there is a table called Departments with the columns [departmentid, departmentname] and then we have another table called Employees which will has [employeeid, employeename, employeesurname, salary] but then now to know which department an employee is linked to I need to link these tables by using the Department table (departmentid) as a foreign key in the Employee table so when I use a Join query I can pull all info linked to the employee including the department they are in. Employee table final structure [employeeid, employeename, employeesurname, salary, departmentid(FORIGN KEY)].


<img src="assets/1.1.png">
<img src="assets/1.2.png">
<img src="assets/2.1.1.png">
<img src="assets/2.1.2.png">
<img src="assets/2.1.3.png">
<img src="assets/2.2.png">
<img src="assets/3.1.1.png">
<img src="assets/3.1.2.png">
<img src="assets/3.2.png">
<img src="assets/4.1.1.png">
<img src="assets/4.1.2.png">
<img src="assets/4.2.png">
