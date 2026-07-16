Create Database DBmodule

use DBmodule

create table Drivers(
driver_id int PRIMARY KEY,
first_name varchar(50),
last_name varchar(50),
license_number varchar(10) UNIQUE,
hire_date date,
);

INSERT INTO Drivers (driver_id, first_name, last_name, license_number, hire_date) VALUES
(1, 'Liam', 'Smith', 'DL49201ATE', '2023-03-14'),
(2, 'Olivia', 'Johnson', 'TX88302BLJ', '2024-07-19'),
(3, 'Noah', 'Williams', 'CA10293CYU', '2025-01-05'),
(4, 'Emma', 'Brown', 'NY55412DNU', '2025-11-22'),
(5, 'Oliver', 'Jones', 'FL77634EOP', '2026-05-11');

Select*from Drivers







Create table Vehicles(
vehicle_id int Primary key,
vehicle_name varchar(50),
vehicle_model varchar(50),
Vehicle_reg varchar(8) UNIQUE,
driver_id int,
FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id),
);

Insert into Vehicles
Values
(1,'Hyundai','H-100','TR98OTGP',1),
(2,'Nissan','NP200','WO2855GP',2),
(3,'Mitsubishi','Fuso Canter','FR80RHGP',3),
(4,'FAW','6.130 FL','BG09ORGP',4),
(5,'Mahindra','Pik Up','FBC118GP',5);

select*from Vehicles






Create table Departments(
department_id int Primary key,
department_name varchar(60),
);

Insert into Departments
values
(1, 'EXECUTIVE / MANAGEMENT'),
(2, 'FLEET OPERATIONS'),
(3, 'DISPATCH & ROUTING'),
(4, 'MARKETING & SALES'),
(5, 'WAREHOUSE & INVENTORY'),
(6, 'CUSTOMER SUPPORT'),
(7, 'LOGISTICS & SUPPLY CHAIN'),
(8, 'DRIVERS & DELIVERY');

Select*from Departments






Create table Employees(
employee_id int Primary key,
employee_name varchar(50),
employee_surname varchar(50),
employee_salary int,
department_id int,
foreign key (department_id) references Departments(department_id)
);

Insert into Employees
values
(1, 'Robert', 'Taylor', 120000, 1), 
(2, 'Alice', 'Morgan', 65000, 2),   
(3, 'Marcus', 'Vance', 58000, 3),   
(4, 'Jessica', 'Lee', 52000, 4),    
(5, 'Brandon', 'Cole', 45000, 5),   
(6, 'Elena', 'Gomez', 40000, 6),    
(7, 'Tariq', 'Khan', 70000, 7),     
(8, 'Liam', 'Smith', 48000, 8),
(9, 'Olivia', 'Johnson', 48500, 8),
(10, 'Noah', 'Williams', 48000, 8),
(11, 'Emma', 'Brown', 49000, 8),
(12, 'Oliver', 'Jones', 47500, 8);

Select*from Employees
where employee_surname like '%a%' order by employee_surname ASC;






Create table Sales(
order_id int Primary key,
order_date date,
customer_name varchar(50),
customer_surname varchar(50),
customer_id int,
amount int,
);

INSERT INTO Sales (order_id, order_date, customer_name, customer_surname, customer_id, amount) VALUES
(1,'2026-07-10','Alexander','Hamilton',1,1250),
(2,'2026-07-12','Charlotte','Brontë',2,420),
(3,'2026-07-14','Benjamin','Franklin',3,2485),
(4,'2026-07-15','Amelia','Earhart',4,5410), 
(5,'2026-07-16','Daniel','Craig',5,630);

Select*From Sales



SELECT
    d.department_name,
    e.employee_name,
    e.employee_surname
FROM Departments d  LEFT JOIN Employees e ON d.department_id = e.department_id;









