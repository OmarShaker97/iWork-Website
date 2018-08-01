create table Companies(
email varchar(50) NOT NULL,
primary key(email),
name varchar(50),
address varchar(500),
domain varchar(50),
type varchar(50) check (type='national' or type='international'),
vision varchar(max),
specialization varchar(max),
 );

 create table Companies_Phones(
 phone INT NOT NULL,
 email varchar(50) NOT NULL,
 primary key(phone,email),
 foreign key(email) references Companies ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Departments(
 code int NOT NULL,
 email varchar(50) NOT NULL,
 primary key(code, email),
 name varchar(50),
 foreign key(email) references Companies ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Jobs(
 title varchar(50) NOT NULL,
 code int NOT NULL,
 email varchar(50) NOT NULL,
 primary key(title, code, email),
 short_description varchar(max),
 detailed_description varchar(max),
 min_experience int,
 salary int,
 deadline varchar(50),
 no_of_vacancies int,
 working_hours int,
 foreign key(code, email) references Departments ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Questions(
 number int NOT NULL,
 primary key(number),
 question varchar(max),
 answer BIT
 );

 create table Jobs_has_Questions(
 title varchar(50) NOT NULL,
 code int NOT NULL,
 email varchar(50) NOT NULL,
 number int NOT NULL,
 primary key(title,code,email,number),
 foreign key(title, code, email) references Jobs ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key(number) references Questions ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Users(
 username varchar(50) NOT NULL,
 primary key(username),
 password varchar(50) NOT NULL,
 personal_email varchar(50),
 birth_date DATE,
 years_of_experience int,
 first_name varchar(50),
 middle_name varchar(50),
 last_name varchar(50),
 age as (year(current_TIMESTAMP)-year(Users.birth_date))
 );

 create table Users_Jobs(
 job varchar(50) NOT NULL,
 username varchar(50) NOT NULL,
 primary key(job, username),
 foreign key(username) references Users ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Job_Seekers(
 username varchar(50) NOT NULL,
 primary key(username),
 foreign key(username) references Users ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Staff_Members(
 username varchar(50) NOT NULL,
 primary key(username),
 annual_leaves int,
 company_email varchar(50),
 day_off varchar(50),
 salary int,
 title varchar(50),
 code int,
 email varchar(50),
 foreign key(username) references Users ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key(title, code,email) references Jobs ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Job_Seekers_apply_Jobs(
 title varchar(50) NOT NULL,
 code int NOT NULL,
 email varchar(50) NOT NULL,
 username varchar(50) NOT NULL,
 hr_response varchar(50) default 'pending' check (hr_response='accepted' or hr_response='rejected' or hr_response='pending'),
 manager_response varchar(50) default 'pending' check (manager_response='accepted' or manager_response='rejected' or manager_response='pending'),
 score int,
 primary key(title,code,email,username),
 foreign key(title, code, email) references Jobs ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key(username) references Job_Seekers ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Attendance_Records(
 date date NOT NULL,
 staff varchar(50) NOT NULL,
 primary key(date, staff),
 start_time time,
 end_time time,
 foreign key(staff) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Emails(
 serial_number int NOT NULL,
 primary key(serial_number),
 subject varchar(50),
 date date,
 body varchar(max)
 );

 create table Staff_send_Email_Staffs(
 email_number int NOT NULL,
 recipient varchar(50) NOT NULL,
 primary key(email_number, recipient),
 sender varchar(50),
 foreign key(email_number) references Emails ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key(recipient) references Staff_Members,
 foreign key(sender) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table HR_Employees(
 username varchar(50) NOT NULL,
 primary key(username),
 foreign key(username) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE
 );

  create table Regular_Employees(
 username varchar(50) NOT NULL,
 primary key(username),
 foreign key(username) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE
 );

  create table Managers(
 username varchar(50) NOT NULL,
 primary key(username),
 type varchar(50),
 foreign key(username) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE,
 );

 create table Annoucements(
 date date NOT NULL,
 title varchar(50) NOT NULL,
 hr_employee varchar(50) NOT NULL,
 primary key(date, title, hr_employee),
 type varchar(50),
 description varchar(max),
 foreign key(hr_employee) references HR_Employees ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Requests(
 start_date date NOT NULL,
 applicant varchar(50) NOT NULL,
 primary key(start_date, applicant),
 end_date date,
 request_date date,
 hr_response varchar(50) default 'pending' check (hr_response='accepted' or hr_response='rejected' or hr_response='pending'),
 manager_response varchar(50) default 'pending' check (manager_response='accepted' or manager_response='rejected' or manager_response='pending'),
 manager_reason varchar(50),
 total_days as DATEDIFF(day,start_date, end_date),
 hr_employee varchar(50),
 manager varchar(50),
 foreign key(applicant) references Staff_Members,
 foreign key(hr_employee) references HR_Employees,
 foreign key(manager) references Managers ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Leave_Requests(
 start_date date NOT NULL,
 applicant varchar(50) NOT NULL,
 primary key(start_date, applicant),
 type varchar(50),
 foreign key(start_date, applicant) references Requests ON DELETE CASCADE ON UPDATE CASCADE
 );

  create table Business_Trip_Requests(
 start_date date NOT NULL,
 applicant varchar(50) NOT NULL,
 primary key(start_date, applicant),
 destination varchar(50),
 purpose varchar(50)
 foreign key(start_date, applicant) references Requests ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Regular_Employee_apply_replace_Requests(
 start_date date NOT NULL,
 applicant varchar(50) NOT NULL,
 primary key(start_date, applicant),
 reg_employee varchar(50),
 replacement varchar(50),
 foreign key(start_date, applicant) references Requests ,
 foreign key(reg_employee) references Regular_Employees ,
 foreign key(replacement)  references  Staff_Members ON DELETE CASCADE ON UPDATE CASCADE, 
 );

  create table Manager_apply_replace_Requests(
 start_date date NOT NULL,
 applicant varchar(50) NOT NULL,
 primary key(start_date, applicant),
 reg_employee varchar(50),
 replacement varchar(50),
 foreign key(start_date, applicant) references Requests,
 foreign key(reg_employee) references Managers ,
 foreign key(replacement) references Staff_Members ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Projects(
 name varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 primary key(name, email),
 start_date date,
 end_date date,
 manager varchar(50)
 foreign key(email) references Companies ,
 foreign key(manager) references Managers ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Manager_assign_Regular_Employee_Projects(
 project_name varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 regular_employee varchar(50) NOT NULL,
 primary key(project_name, email, regular_employee),
 manager varchar(50),
 foreign key(project_name, email) references Projects ,
 foreign key(regular_employee) references Regular_Employees ,
 foreign key(manager) references Managers ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Tasks(
 name varchar(50) NOT NULL,
 project varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 primary key(name,project, email),
 deadline date,
 status varchar(50) check (status='Open' or status='Closed' or status = 'Fixed' or status = 'Assigned'),
 description varchar(max),
 regular_employee varchar(50),
 manager varchar(50),
 foreign key(project, email) references Projects ,
 foreign key(regular_employee) references Regular_Employees,
 foreign key(manager) references Managers ON DELETE CASCADE ON UPDATE CASCADE
 );

 create table Task_Comments(
 task_name varchar(50) NOT NULL,
 project varchar(50) NOT NULL,
 company varchar(50) NOT NULL,
 comment varchar(50) NOT NULL,
 primary key(task_name,project,company,comment),
 foreign key(task_name, project, company) references Tasks ON DELETE CASCADE ON UPDATE CASCADE
 );
