GO
create or alter FUNCTION getCompany
(@username varchar(50))
RETURNS VARCHAR(50)
BEGIN
Declare @myValue VARCHAR(50)
select @myValue = s.email from Staff_Members s where @username = s.username
return @myValue
END

GO
create or alter FUNCTION getDepartment
(@username varchar(50))
RETURNS VARCHAR(50)
BEGIN
Declare @myValue VARCHAR(50)
select @myValue = s.code from Staff_Members s where @username = s.username
return @myValue
END

GO
create or alter PROC AllRequests
@username varchar(50)
as
Select * from Requests r, Staff_Members s where r.applicant = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=s.email
-- Additional Procedures

-- Get all companies
GO
create or alter PROCEDURE getallCompanies
AS
	SELECT * FROM Companies

-- Group companies by type
GO
create or alter PROCEDURE groupByType
AS
	SELECT name, type
	FROM Companies
	GROUP BY name, type

-- View all jobs
GO
create or alter procedure viewalljobs
AS
Select *
from Jobs

-- Order companies by type
GO
create or alter procedure orderbytype
AS
select *
from Companies
order by Companies.type


-- ~~ User Stories start from here ~~

-- As an registered/unregistered user, I should be able to...

-- 1. Search for an company by its name or address or its type (national/international)
GO
create or alter PROC Search
@name varchar(50)
AS
Select c.*
FROM Companies c
WHERE c.name like '%' + @name + '%'

GO
create or alter PROC searchbyaddress
@address VARCHAR(50) 
as
select c.*
from Companies c
WHERE c.address like '%' + @address + '%'

GO
create or alter proc searchbytype
@type VARCHAR(50) 
as
select Companies.*
from Companies
where Companies.type like '%' + @type + '%'

--2. View a list of all avaiable companies on the system along with all information of the company 
GO
create or alter proc View_All_Available_Companies
as 
select c.* , p.* 
FROM Companies c , Companies_Phones p
Where p.email = c.email

-- 3. View the information of a certain company along with the departments in that company.

GO
create or alter proc View_departments
@email VARCHAR(50)
AS
SELECT DISTINCT c.* , p.phone ,  d.code 
from Companies c , Companies_Phones p , Departments d
where c.email=@email AND p.email=@email and d.email=@email

-- 4. View the information of a certain department in a certain company along with the jobs that have vacancies in it.
GO
create or alter PROC View_Jobs
@email varchar(50),
@code int 
AS
SELECT d.*,c.*, j.*
FROM Departments d, Companies c, Jobs j
where d.email = @email AND c.email = @email AND j.email = @email AND d.code=@code AND j.no_of_vacancies > 0

-- 5. Register to the website to be able to apply for any job later on. Any user has to register in the website with a unique username and a password, along with all the needed information.
GO
create or alter PROC Register
@username varchar(50),
@password varchar(50),
@personal_email varchar(50),
@birth_date datetime,
@years_of_experience int,
@first_name varchar(50),
@middle_name varchar(50),
@last_name varchar(50)
AS
BEGIN
INSERT INTO Users([username],[password],[personal_email],[birth_date],[years_of_experience],[first_name],[middle_name],[last_name])
VALUES(@username,@password,@personal_email,@birth_date,@years_of_experience,@first_name,@middle_name,@last_name)

Insert INTO Job_Seekers(username) values (@username)
END

-- 6. Search for jobs that have vacancies on the system and their short description or title contain a string of keywords entered by the user.
GO
create or alter proc Search_JobsVacancies_Title
@title varchar (max)
AS
select Distinct j.* , c.name , d.code 
from Jobs j , companies c , Departments d 
where j.code=d.code and c.email=d.email and j.no_of_vacancies>0 and j.title like '%' + @title + '%'

GO
create or alter proc Search_JobsVacancies_Description
@short_description varchar (max)
AS
select Distinct j.* , c.name , d.code 
from Jobs j , companies c , Departments d 
where j.code=d.code and c.email=d.email and j.no_of_vacancies>0 and j.short_description LIKE '%' + @short_description + '%'

-- 7. View companies in the order of having the highest average salaries
GO
create or alter proc View_Highest_AVG_Companies 
as
select c.* , AVG (j.salary) as 'Average'
from Companies c , Jobs j 
where c.email=j.email
group by c.email , c.name , c.address , c.domain , c.[type] , c.specialization , c.vision 
order by AVG (j.salary) DESC

-- As a registered user, I should be able to...

-- 1. Login to the website using my username and password which checks that i am an existing user, and whether i am job seeker, HR employee, Regular employee or manager.
GO
create or alter PROC Signin
@username varchar(50), 
@password varchar(50)
AS
BEGIN
DECLARE @returnedValue INT
DECLARE @myTable table(
myValue int)
IF(EXISTS(SELECT * FROM Users u WHERE @username=u.username and @password = u.password))
BEGIN
IF(EXISTS(Select * from Regular_Employees r where @username = r.username))
SET @returnedValue = 1
ELSE IF(EXISTS(Select * from HR_Employees h where @username = h.username))
SET @returnedValue = 2
ELSE IF(EXISTS(Select * from Managers m where @username = m.username))
SET @returnedValue = 3
ELSE IF(EXISTS(Select * from Job_Seekers j where @username = j.username))
SET @returnedValue = 4
ELSE
SET @returnedValue = 0
END
INSERT INTO @myTable(myValue) values(@returnedValue)
SELECT * from @myTable
END

-- 2. View all of my possible information
GO
create or alter PROC View_All_Info
@username varchar(50)
AS
SELECT *
FROM Users
where @username = Users.username -- Do I need to show the info from Users only or all information from other tables?

-- 3. Edit all of my personal information

-- 3. Edit all of my personal information
GO
create or alter PROC Edit_Personal_Info
@username varchar(50) ,
@password varchar(50) ,
@personal_email varchar(50) ,
@birth_date datetime ,
@years_of_experience int ,
@first_name varchar(50) ,
@middle_name varchar(50) ,
@last_name varchar(50) 
AS
IF(EXISTS(Select * FROM Users u where @username=u.username))
BEGIN

if(@password != '')
UPDATE Users
SET Users.password = @password
WHERE Users.username = @username

if(@personal_email != '')
UPDATE Users
SET Users.personal_email = @personal_email
WHERE Users.username = @username

if(@birth_date != '' )
UPDATE Users
SET Users.birth_date = @birth_date
WHERE Users.username = @username

if(@years_of_experience != '')
UPDATE Users
SET Users.years_of_experience = @years_of_experience
WHERE Users.username = @username

if(@first_name != '')
UPDATE Users
SET Users.first_name = @first_name 
WHERE Users.username = @username

if(@middle_name != '')
UPDATE Users
SET Users.middle_name = @middle_name
WHERE Users.username = @username

if(@last_name != '')
UPDATE Users
SET Users.last_name = @last_name
WHERE Users.username = @username
END

-- As a job seeker, I should be able to

-- Additional Procedures

-- Get Jobs
GO
CREATE PROC Get_Jobs
AS
select * from Jobs j, Departments d where j.code = d.code and j.email = d.email

-- Get All Answers
GO
create or alter PROC View_Interview_Answers
@username varchar(50),
@title varchar(50),
@code int,
@email varchar(50)
AS
Select q.answer
FROM Jobs_has_Questions j1 , Job_Seekers_apply_Jobs j2 , Questions q
where j1.title=@title and  q.number= j1.number and @username = j2.username and j1.code = @code and j1.email = @email and j2.code = @code and j2.email = @email and j2.title = @title

-- View Accepted Jobs
GO
create or alter PROC View_Accepted_Jobs
@username varchar(50)
AS
IF(EXISTS(Select* FROM Job_Seekers j1 where @username=j1.username))
SELECT j.title, j.email, j.hr_response, j.manager_response , j.score
FROM Job_Seekers_apply_Jobs j
WHERE j.username = @username and j.hr_response='accepted' and j.manager_response='accepted'

-- Milestone 2 Job Seeker Procedures

-- 1. Apply for any job as long as I have the needed years of experience for the job. Make sure that a job seeker can’t apply for a job, if he/she applied for it before and the application is still pending.
GO
create or alter PROC Apply_For_Job
@username varchar(50),
@title varchar(50),
@code int,
@email varchar(50)
AS
BEGIN
IF(NOT EXISTS(Select * from Job_Seekers where @username = Job_Seekers.username))
BEGIN
INSERT INTO Job_Seekers(username) values (@username)
END
IF(NOT EXISTS(Select * 
FROM Job_Seekers j1, Jobs j2, Job_Seekers_apply_Jobs j3, Users u 
where j3.code = @code and j3.email = @email and j3.title = @title and j1.username = u.username and @username = j1.username and @title=j2.title and @code = j2.code and j2.email=@email and u.years_of_experience >= j2.min_experience and j2.title=@title and j2.email=@email and j3.hr_response='pending' and j3.manager_response='pending'))
BEGIN
INSERT INTO Job_Seekers_apply_Jobs([username],[title],[code],[email]) values (@username,@title,@code,@email)
END
END

-- 2. View the interview questions related to the job I am applying for.
GO
create or alter PROC View_Interview_Questions
@username varchar(50),
@title varchar(50),
@code int,
@email varchar(50)
AS
Select q.question
FROM Jobs_has_Questions j1 , Job_Seekers_apply_Jobs j2 , Questions q
where j1.title=@title and  q.number= j1.number and @username = j2.username and j1.code = @code and j1.email = @email and j2.code = @code and j2.email = @email and j2.title = @title

-- 3. Save the score I got while applying for a certain job.
GO
create or alter PROC Save_Score
@username varchar(50),
@title varchar(50),
@code int,
@email varchar(50),
@score int
AS
IF(EXISTS(Select*
FROM Job_Seekers j
where @username=j.username))
UPDATE Job_Seekers_apply_Jobs
SET Job_Seekers_apply_Jobs.score = @score
WHERE @username = Job_Seekers_apply_Jobs.username and Job_Seekers_apply_Jobs.code=@code and Job_Seekers_apply_Jobs.email=@email and Job_Seekers_apply_Jobs.title=@title

-- 4. View the status of all jobs I applied for before (whether it is finally accepted, rejected or still in the review process), along with the score of the interview questions.
GO
create or alter PROC View_Job_Status
@username varchar(50)
AS
IF(EXISTS(Select* FROM Job_Seekers j1 where @username=j1.username))
SELECT j.title, j.email, j.hr_response, j.manager_response , j.score
FROM Job_Seekers_apply_Jobs j
WHERE j.username = @username

-- 5. Choose a job from the jobs I was accepted in, which would make me a staff member in the company and the department that offered this job. Accordingly, my salary and company email are set, and I get 30 annual leaves. In addition, I should also choose one day-off other than Friday. The number of vacancies for the assigned job has to be updated too.

GO
create or alter PROC Choose_Job
@username varchar(50),
@title varchar(50),
@dayoff varchar(50),
@email varchar(50)
AS
DECLARE @Domain varchar(50)
DECLARE @Salary INT
DECLARE @Code INT
Select @Domain=domain from Companies c where c.email=@email
Select @Code=code from Job_Seekers_apply_Jobs j where j.email=@email and j.title = @title and j.username=@username
Select @Salary=salary from Jobs j where j.title = @title and j.email = @email and j.code=@Code
IF(EXISTS(Select*
FROM Job_Seekers j, Job_Seekers_apply_Jobs j1, Jobs j2, Departments d, Companies c
where @username=j.username and @title=j1.title and  j2.title = @title and d.email = j1.email and j1.email = c.email and j1.hr_response='accepted'
and j1.manager_response='accepted' and @dayoff!='Friday'))
BEGIN
IF(EXISTS(Select * from Staff_Members m where m.username = @username))
BEGIN
DELETE
FROM Staff_Members
WHERE Staff_Members.username = @username
END
INSERT INTO Staff_Members([username],[annual_leaves],[company_email],[day_off],[salary],[title],[code],[email])
VALUES (@username, 30, @username + @Domain , @dayoff, @Salary, @title, @Code, @email)

UPDATE Jobs
SET Jobs.no_of_vacancies = Jobs.no_of_vacancies - 1
WHERE @email=Jobs.email and @Code=Jobs.code and @title=Jobs.title

DELETE
FROM Job_Seekers_apply_Jobs
WHERE Job_Seekers_apply_Jobs.username = @username and Job_Seekers_apply_Jobs.code = @code and Job_Seekers_apply_Jobs.email = @email and Job_Seekers_apply_Jobs.title=@title
END

-- 6. Delete an job application I applied for as long as it is still in the review process
GO
create or alter PROC  Delete_Application
@username varchar(50),
@title varchar(50),
@email varchar(50)
AS 
IF(EXISTS(Select * from Job_Seekers_apply_Jobs j where j.username = @username))
DELETE 
FROM Job_Seekers_apply_Jobs
WHERE Job_Seekers_apply_Jobs.title = @title and (Job_Seekers_apply_Jobs.hr_response='pending' or Job_Seekers_apply_Jobs.manager_response = 'pending') and Job_Seekers_apply_Jobs.email=@email

-- As a staff member, I should be able to...

-- 1. Check-in once I arrive each day.
GO
create or alter PROC  Check_in
@staff varchar(50)
AS 
IF(EXISTS(Select * From Staff_Members s where s.username = @staff and not(DATENAME(dw,GETDATE())='Friday' or DATENAME(dw, GETDATE())=s.day_off)))
insert  into Attendance_Records (date, staff,start_time) values (CONVERT (date, CURRENT_TIMESTAMP),@staff,CONVERT(VARCHAR(5), GETDATE(), 108)+':00'+' ' + RIGHT(CONVERT(VARCHAR(30), GETDATE(), 9),2))

-- 2. Check-out before I leave each day.
GO
create or alter PROC  Check_out
@staff varchar(50)
AS
IF(EXISTS(Select * From Staff_Members s where s.username = @staff and not(DATENAME(dw,GETDATE())='friday' or DATENAME(dw, GETDATE())=s.day_off)))
UPDATE Attendance_Records 
SET Attendance_Records.date = cast(current_timestamp as date), Attendance_Records.staff = @staff , end_time = CONVERT(VARCHAR(5), GETDATE(), 108)+':00'+' ' + RIGHT(CONVERT(VARCHAR(30), GETDATE(), 9),2)
WHERE Attendance_Records.staff = @staff and Attendance_Records.date = cast(current_timestamp as date)

-- 3. View all my attendance records (check-in time, check-out time, duration, missing hours) within a certain period of time
GO
create or alter PROC Staff_View_Attendance
@username varchar(50)
AS
DECLARE @newTable table(
username varchar(50),
date date,
start_time time,
end_time time,
duration int,
missing_hours int
)
IF(EXISTS(Select * from Staff_Members s where s.username=@username))
BEGIN
INSERT INTO @newTable(username, date,start_time, end_time)
SELECT a.staff, a.date, a.start_time, a.end_time
FROM Attendance_Records a, Staff_Members s
where s.username = a.staff and @username = s.username

UPDATE @newTable
SET duration=DATEDIFF(hh, start_time, end_time), missing_hours = j.working_hours-DATEDIFF(hh, start_time, end_time)
FROM @newTable t, Jobs j, Staff_Members s
where s.username = t.username and s.username = @username and s.code = j.code and s.title = j.title and s.email = j.email

Select *
from @newTable


END

-- 4. Apply for requests of both types: leave requests or business trip requests, by supplying all the needed information for the request.

GO
create or alter PROC Apply_For_Leave_Requests
@username varchar(50),
@start_date date,
@end_date date,
@type varchar(50)
AS
IF(NOT EXISTS(Select * from Requests r where r.request_date = GETDATE() and r.applicant = @username))
	BEGIN
	IF(EXISTS(Select * from Managers m where m.username = @username))
		BEGIN
		IF(EXISTS(Select * from Staff_Members s where s.username=@username and DATEDIFF(day,@start_date,@end_date)>s.annual_leaves))
		Insert INTO Requests(applicant,start_date,end_date,hr_response,manager_response, request_date, manager) VALUES (@username, @start_date, @end_date, 'accepted', 'accepted', GETDATE(), @username)
		Insert Into Leave_Requests(applicant,start_date,type) values (@username,@start_date,@type)
		END
	ELSE
		BEGIN
		IF(EXISTS(Select * from Staff_Members s where s.username=@username and DATEDIFF(day,@start_date,@end_date)>s.annual_leaves))
		Insert INTO Requests(applicant,start_date,end_date, request_date) values (@username, @start_date, @end_date, GETDATE())
		Insert Into Leave_Requests(applicant,start_date,type) values (@username,@start_date,@type)
	END
END

GO
create or alter PROC Apply_For_Business_Requests
@username varchar(50),
@start_date date,
@end_date date,
@destination varchar(50),
@purpose varchar(50)
AS
IF(NOT EXISTS(Select * from Requests r where r.request_date = GETDATE() and r.applicant = @username))
	BEGIN
	IF(EXISTS(Select * from Managers m where m.username = @username))
		BEGIN
		IF(EXISTS(Select * from Staff_Members s where s.username=@username and DATEDIFF(day,@start_date,@end_date)>s.annual_leaves))
		Insert INTO Requests(applicant,start_date,end_date,hr_response,manager_response, request_date, manager) VALUES (@username, @start_date, @end_date, 'accepted', 'accepted', GETDATE(), @username)
		Insert Into Business_Trip_Requests(applicant,start_date,destination,purpose) values (@username,@start_date,@destination,@purpose)
		END
	ELSE
		BEGIN
		IF(EXISTS(Select * from Staff_Members s where s.username=@username and DATEDIFF(day,@start_date,@end_date)>s.annual_leaves))
		Insert INTO Requests(applicant,start_date,end_date, request_date) values (@username, @start_date, @end_date, GETDATE())
		Insert Into Business_Trip_Requests(applicant,start_date,destination,purpose) values (@username,@start_date,@destination,@purpose)
	END
END

-- 5. View the status of all requests I applied for before (HR Employee and Manager response)
 GO
 create or alter PROC View_Status
 @applicant varchar(50)
 AS
 if(EXISTS(Select * from Staff_Members s where s.username=@applicant))
 Select a.start_date, a.hr_response, a.manager_response, a.manager_reason
 From Requests a
 where @applicant = a.applicant

 -- 6. Delete any request I applied for as log as it is still in the review process
GO
create or alter PROC Delete_Requests
@applicant varchar(50),
@start_date date
AS
DELETE
FROM Requests
WHERE Requests.applicant = @applicant and Requests.start_date = @start_date and (Requests.hr_response='pending' or Requests.manager_response = 'pending')

 -- 7. Send emails to staff members in my company
GO 
create or alter PROC send_emails
@sender varchar(50),
@recipient varchar(50),
@subject varchar(50),
@body varchar(max)
AS
IF(EXISTS(Select * from Staff_Members s1, Staff_Members s2 where s1.username = @recipient and s2.username = @sender and s1.email = s2.email))
BEGIN
DECLARE @Number INT
select @Number = count(*) from Emails
SET @Number = @Number + 1
insert into Emails(serial_number, subject, date, body)
values (@Number, @subject,GETDATE(),@body)

insert into Staff_send_Email_Staffs(email_number,recipient, sender)
values (@Number,@recipient,@sender)
END

-- 8. View emails sent to me by other staff members of my company.
GO
create or alter PROC View_Emails
@username varchar(50)
AS
IF(EXISTS(Select * from Staff_Members s where s.username = @username))
BEGIN
Select s1.sender, e.subject,e.date, e.body 
from Emails e, Staff_send_Email_Staffs s1, Staff_Members s2
where s1.sender = s2.username and s2.email = dbo.getCompany(@username) and s1.recipient = @username and s1.email_number=e.serial_number
END

-- 9. Reply to an email sent to me, while the reply would be saved in the database as a new email record.
GO
create or alter PROC Reply_To_Emails
@username varchar(50),
@sender varchar(50),
@subject varchar(50),
@body varchar(max)
AS
IF(EXISTS(Select * from Staff_Members s1, Staff_Members s2 where s1.username = @username and s2.username=@sender))
BEGIN
	IF(EXISTS(Select * from Staff_send_Email_Staffs s1, Staff_send_Email_Staffs s2 where s1.recipient = @username and s2.sender=@sender))
	BEGIN
	DECLARE @Number INT
	select @Number = count(*) from Emails
	SET @Number = @Number + 1
	insert into Emails(serial_number, subject, date, body)
	values (@Number, @subject,GETDATE(),@body)

	insert into Staff_send_Email_Staffs(email_number,recipient, sender)
	values (@Number,@sender,@username)
	END
END

-- 10. View announcements related to my company within the past 20 days.

GO
create or alter PROC View_Annoucements
@username varchar(50)
AS
IF(EXISTS(Select * from Staff_Members s where s.username = @username))
BEGIN
SELECT a.*
From Annoucements a
WHERE dbo.getCompany(a.hr_employee) = dbo.getCompany(@username) and DATEDIFF(d, a.date, GETDATE())<=20
END
-- As an HR employee, I should be able to...

-- Add a new job that belongs to my department

GO
create or alter PROC	Add_Job
@username varchar(50),
@title varchar(50),
@short_description varchar(max),
@detailed_description varchar(max),
@min_experience int,
@salary int,
@deadline varchar(50),
@no_of_vacancies int,
@working_hours int
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
BEGIN
insert into Jobs(title, code, email, short_description, detailed_description, min_experience, salary, deadline, no_of_vacancies, working_hours)
VALUES (@title, dbo.getDepartment(@username), dbo.getCompany(@username), @short_description, @detailed_description, @min_experience, @salary, @deadline, @no_of_vacancies, @working_hours)
END

GO
create or alter PROC	Add_Job_Questions
@username varchar(50),
@title varchar(50),
@number int
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
BEGIN
insert into Jobs_has_Questions(title, code, email, number)
VALUES (@title, dbo.getDepartment(@username) , dbo.getCompany(@username), @number)
END


-- 2. View information about a job in my department
GO
create or alter PROC View_Job
@username varchar(50),
@title varchar(50)
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
Select j.* from Jobs j where dbo.getDepartment(@username) = j.code and dbo.getCompany(@username)=j.email and j.title=@title

-- 3. Edit the information of a job in my department
GO
create or alter PROC Edit_Job
@username varchar(50),
@title varchar(50) = null,
@short_description varchar(max) = null,
@detailed_description varchar(max) = null,
@min_experience int = null,
@salary int = null,
@deadline varchar(50) = null,
@no_of_vacancies int = null,
@working_hours int = null
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
IF(EXISTS(Select * from Jobs j, Staff_Members s where j.code = s.code and s.username = @username))
BEGIN
BEGIN
if(@short_description is not null)
UPDATE Jobs
SET Jobs.short_description = @short_description
WHERE Jobs.title = @title

if(@detailed_description is not null)
UPDATE Jobs
SET Jobs.detailed_description = @detailed_description
WHERE Jobs.title = @title

if(@min_experience is not null)
UPDATE Jobs
SET Jobs.min_experience = @min_experience
WHERE Jobs.title = @title

if(@salary is not null)
UPDATE Jobs
SET Jobs.salary = @salary
WHERE Jobs.title = @title

if(@deadline is not null)
UPDATE Jobs
SET Jobs.deadline = @deadline
WHERE Jobs.title = @title

if(@no_of_vacancies is not null)
UPDATE Jobs
SET Jobs.no_of_vacancies = @no_of_vacancies
WHERE Jobs.title = @title

if(@working_hours is not null)
UPDATE Jobs
SET Jobs.working_hours = @working_hours
WHERE Jobs.title = @title
END
END

-- 4. View new applications for a specific job in my department
GO
create or alter PROC View_New_Applications
@username varchar(50)
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
Select *
From Job_Seekers_apply_Jobs j
Where hr_response='pending' and dbo.getDepartment(@username)=j.code and dbo.getCompany(@username) = j.email

-- 5. Accept or reject applications for jobs in my department
GO
create or alter PROC Respond_Job_Applications
@username varchar(50),
@title varchar(50),
@applicant varchar(50),
@response varchar(50)
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
UPDATE Job_Seekers_apply_Jobs
SET Job_Seekers_apply_Jobs.hr_response = @response
where dbo.getCompany(@username) = Job_Seekers_apply_Jobs.email and dbo.getDepartment(@username) = Job_Seekers_apply_Jobs.code and @applicant = Job_Seekers_apply_Jobs.username and @title = Job_Seekers_apply_Jobs.title

-- 6. Post annoucements related to my company to inform staff members about new updates
GO
create or alter PROC Post_Annoucements
@username varchar(50),
@title varchar(50),
@type varchar(50),
@description varchar(max)
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
Insert into Annoucements(hr_employee,date,title,type,description) values (@username,GETDATE(),@title,@type,@description)

-- 7. View requests (business or leave) of staff members working with me in the same department that were approved by a manager only
GO
create or alter PROC View_Requests
@username varchar(50)
AS
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
SELECT r.*
FROM Requests r, Staff_Members s
WHERE s.username = r.applicant and s.code=dbo.getDepartment(@username) and s.email = dbo.getCompany(@username) and r.manager_response='accepted'

-- 8. Accept and reject requests of staff members working with me in the same department that were approved by a manager.
GO
create or alter PROC Respond_Requests
@username varchar(50),
@response varchar(50),
@applicant varchar(50),
@start_date date
AS
DECLARE @Total_Days INT
SELECT @Total_Days=Requests.total_days from Requests where Requests.applicant=@applicant and Requests.start_date = @start_date
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
BEGIN
IF(EXISTS(Select * from Requests r, Staff_Members s where r.applicant=@applicant and r.applicant = s.username and r.start_date = @start_date and s.code = dbo.getDepartment(@username) and r.manager_response = 'accepted'))
	BEGIN
	UPDATE Requests
	SET Requests.hr_response=@response
	where Requests.start_date = @start_date and Requests.applicant = @applicant

	UPDATE Staff_Members
	SET Staff_Members.annual_leaves = Staff_Members.annual_leaves-@Total_Days
	where Staff_Members.username = @applicant
	END
END

-- 9. View the attendance records of any staff member in my department (check-in time, check-out time, duration, missing hours) within a certain period of time.
GO
create or alter PROC HR_View_Attendance
@username varchar(50)
AS
DECLARE @newTable table(
username varchar(50),
date date,
start_time time,
end_time time,
duration int,
missing_hours int
)
IF(EXISTS(Select * from HR_Employees h where h.username=@username))
BEGIN
INSERT INTO @newTable(username, date,start_time, end_time)
SELECT a.staff, a.date, a.start_time, a.end_time
FROM Attendance_Records a, Staff_Members s
where s.username = a.staff and s.code = dbo.getDepartment(@username)

UPDATE @newTable
SET duration=DATEDIFF(hh, start_time, end_time), missing_hours = j.working_hours-DATEDIFF(hh, start_time, end_time)
FROM @newTable t, Jobs j, Staff_Members s
where s.username = t.username and s.code = j.code and s.title = j.title and s.email = j.email

Select *
from @newTable

END
-- As a regular employee, I should be able to...

-- 1. View a list of projects assigned to me with all of their information.

go
create or alter proc Viewprojects
@username varchar (50)
AS
if EXISTS (SELECT * from Regular_Employees r where r.username=@username )
select p.*
from Projects p  , Manager_assign_Regular_Employee_Projects r
where p.name=r.project_name and p.email=r.email and r.regular_employee=@username

-- 2. View a list of tasks in a certain project assigned to me along with all of their information and status.
go
create or alter proc Viewtasks
@username VARCHAR(50),
@project_name varchar(50)
AS
if exists (select * from Regular_Employees r where r.username=@username)
select t.*
from tasks t , Projects p 
where t.project=p.name and t.email=p.email and t.regular_employee=@username and @project_name = t.project

-- 3. After finalizing a task, I can change the status of this task to 'Fixed' as long as it did not pass the deadline.
go
create or alter proc Finalizetask
@username VARCHAR(50),
@project_name varchar(50),
@task_name varchar(50)
AS
if(exists(select * from Regular_Employees r where r.username=@username))
update Tasks
set Tasks.status='Fixed'
where Tasks.deadline >= GETDATE() and Tasks.regular_employee=@username and Tasks.name=@task_name

-- 4. Work on the task again (a task that was assigned to me before).

GO
create or alter proc WorkonTaskAgain
@username VARCHAR(50),
@project_name varchar(50),
@task_name varchar(50)
AS
if exists (select * from Regular_Employees r where r.username=@username)
begin
IF(NOT EXISTS(SELECT * FROM Task_Comments t where t.task_name = @task_name))
begin
update Tasks
set Tasks.status='Assigned'
where Tasks.deadline >= GETDATE() and @username=Tasks.regular_employee and @task_name = Tasks.name
end
end

-- As a manager, I should be able to...

GO
create or alter PROC AllRequests
@username varchar(50)
as
Select * from Requests r, Staff_Members s where r.applicant = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=s.email

go
create or alter PROC AllApp
@username varchar(50)
as
Select * from Job_Seekers_apply_Jobs r, Staff_Members s where @username = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=s.email

go
create or alter PROC AllProject
@username varchar(50)
as
Select * from Projects r, Staff_Members s where @username = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=s.email


go
create or alter PROC AllProjects
@username varchar(50)
as
Select * from Manager_assign_Regular_Employee_Projects r, Staff_Members s where @username = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=s.email

go
create or alter PROC AllTasks
@username varchar(50)
as
Select r.* from Tasks r, Staff_Members s , Projects p where p.email=r.email and p.name=r.project and r.manager=@username and @username = s.username and dbo.getDepartment(@username)=s.code and dbo.getCompany(@username)=r.email
go
create or alter PROC AllTasks2
@username varchar(50)
as
Select distinct r.* from Tasks r, Staff_Members s , Projects p where p.email=r.email and p.name=r.project and r.manager=@username and @username = s.username and (dbo.getDepartment(@username)=s.code or r.status='Fixed') and dbo.getCompany(@username)=r.email 


-- 1. View new requests from staff members working in my department.
go
create or alter proc MviewRequests
@username VARCHAR(50)
AS
if exists(select * from Managers m where m.username=@username)
SELECT r.*
from Requests r , Staff_Members s  , Managers m 
where r.applicant = s.username 
and r.manager=m.username and dbo.getDepartment(@username) = s.code and m.username=@username  
and m.type='hr'

-- 2. Accept or reject requests from staff members working in my department before being reviewed by the HR employee.
go
create or alter proc RespondtoRequest
@username varchar(50),
@start_date DATE,
@applicant varchar(50),
@response varchar(50),
@reason VARCHAR(50)
AS
BEGIN
IF(EXISTS(select * from Managers m where m.username=@username))
BEGIN
if(@response='accepted')
Begin
UPDATE Requests 
SET Requests.manager_response = @response , Requests.manager_reason=NULL
where dbo.getDepartment(@username) = dbo.getDepartment(Requests.applicant)  and Requests.hr_response='pending' and @start_date=Requests.start_date and @applicant=Requests.applicant
end

if (@response ='rejected')
Begin
if(LEN(@reason)>0)
begin
UPDATE Requests 
SET Requests.manager_response = @response , Requests.manager_reason=@reason
where dbo.getDepartment(@username) = dbo.getDepartment(Requests.applicant)  and Requests.hr_response='pending' and @start_date=Requests.start_date and @applicant=Requests.applicant
end
end

END
END

--3. View applications for a specific job in my department that were approved by an HR employee.
go
create or alter proc viewapp
@username varchar(50),
@title varchar(50)
AS
if exists (select * from Managers m where m.username =@username)
select j.* , u.*
from Job_Seekers_apply_Jobs j , Users u
where j.hr_response='accepted' and  dbo.getDepartment(@username)=j.code  and j.username=u.username and j.title = @title

-- 4. Accept or reject job applications to jobs related to my department after being approved by an HR employee.
go
create or alter proc Respondtoapp
@username varchar(50),
@title varchar(50),
@applicant varchar(50),
@response varchar(50)
AS
BEGIN
IF(EXISTS(select * from Managers m where m.username=@username))

UPDATE Job_Seekers_apply_Jobs 
SET Job_Seekers_apply_Jobs.manager_response = @response
where dbo.getCompany(@username) = Job_Seekers_apply_Jobs.email and dbo.getDepartment(@username) = Job_Seekers_apply_Jobs.code
 and @applicant = Job_Seekers_apply_Jobs.username and @title = Job_Seekers_apply_Jobs.title 
 and Job_Seekers_apply_Jobs.hr_response='accepted'

end

-- 5. create or alter a new project in my department with all of its information.
go
create or alter proc Newproject
@username VARCHAR(50),
@name varchar(50) ,
 @email varchar(50),
 @start_date DATE,
 @end_date DATE
 AS
 if exists (select * from Managers m where m.username =@username)
 insert into Projects(name ,email,start_date,end_date,manager) values (@name , @email, @start_date,@end_date,@username)

-- 6. Assign regular employees to work on any project in my department.
go
 create or alter proc  AssignProject 
 @username varchar(50),
 @project_name varchar(50) ,
 @email varchar(50) ,
 @regular_employee varchar(50) 
 
 as
 if exists (select * from Managers m where m.username =@username)
 BEGIN
 IF(NOT EXISTS(Select * from Manager_assign_Regular_Employee_Projects p where p.regular_employee = @regular_employee))
 BEGIN
 insert into Manager_assign_Regular_Employee_Projects( project_name,  email ,   regular_employee ,   manager)
 values ( @project_name  , @email  , @regular_employee  , @username )
 select *
 from Manager_assign_Regular_Employee_Projects
 where dbo.getDepartment(@username) = dbo.getDepartment(@regular_employee) and @regular_employee != Manager_assign_Regular_Employee_Projects.regular_employee
 END
 END

-- 7. Remove regular employees assigned to a project as long as they don’t have tasks assigned to him/her in this project.
GO
create or alter PROC Remove_Regular_Employees
@username varchar(50),
@regular_employee varchar(50),
@project_name varchar(50)
AS
If(exists(select * from Managers m where m.username = @username))
BEGIN
	IF(not exists(select * from Tasks t where t.regular_employee = @regular_employee and t.project = @project_name))
	BEGIN
	DELETE
	FROM Manager_assign_Regular_Employee_Projects
	Where Manager_assign_Regular_Employee_Projects.project_name = @project_name and Manager_assign_Regular_Employee_Projects.regular_employee = @regular_employee
	END
	END

--8 Define a task in a project in my department which will have status ‘Open’.
GO
create or alter PROC Define_Task
@username varchar(50),
@task_name varchar(50),
@project_name varchar(50),
@deadline date,
@description varchar(max)
AS
IF(EXISTS(select * from Managers m where m.username = @username))
BEGIN
INSERT INTO Tasks(name,project,email,deadline,status, description,manager) 
values (@task_name, @project_name,dbo.getCompany(@username), @deadline, 'Open', @description, @username)
END

-- 9. Assign one regular employee (from those already assigned to the project) to work on an already defined task by me in this project.
GO
create or alter PROC Assign_Reg_Employee
@username varchar(50),
@task_name varchar(50),
@project_name varchar(50),
@regular_employee varchar(50)
AS
IF(EXISTS(Select * from Managers m where m.username = @username))
BEGIN
IF(EXISTS(Select * from Manager_assign_Regular_Employee_Projects a where a.project_name=@project_name and a.regular_employee = @regular_employee and a.email = dbo.getCompany(@username)))
BEGIN
UPDATE Tasks
SET regular_employee = @regular_employee
WHERE name=@task_name and project = @project_name and dbo.getCompany(@username)= email and Tasks.status = 'Open'
END
END

-- 10. Change the regular employee working on a task on the condition that its state is ‘Assigned’, i.e. by assigning it to another regular employee.
GO
create or alter PROC Change_Reg_Employee
@username varchar(50),
@task_name varchar(50),
@project_name varchar(50),
@new_employee varchar(50)
AS
IF(EXISTS(Select * from Managers m where m.username = @username))
IF(EXISTS(Select * from Regular_Employees r where r.username = @new_employee  ))
BEGIN
UPDATE Tasks
SET regular_employee = @new_employee
where @project_name = project and name=@task_name and dbo.getCompany(@username)=email and status='Assigned'
END

-- 11. View a list of tasks in a certain project that have a certain status.
GO
create or alter PROC View_Tasks
@username varchar(50),
@project_name varchar(50),
@status varchar(50)
AS
IF(EXISTS(Select * from Managers m where m.username = @username))
BEGIN
SELECT *
from Tasks t
where t.project=@project_name and t.status = @status and dbo.getCompany(@username)=t.email
END

-- 12. Review a task that I create or alter or alterd in a certain project which has a state ‘Fixed’, and either accept or reject it.
GO
create or alter PROC Review_Task
@username varchar(50),
@task_name varchar(50),
@project_name varchar(50),
@response varchar(50),
@deadline date
AS
IF(EXISTS(Select * from Managers m where m.username = @username))
BEGIN
IF(EXISTS(Select * from Tasks t where t.name=@task_name and t.project=@project_name and t.status='Fixed' and t.email = dbo.getCompany(@username)))
BEGIN
IF(@response='accepted')
UPDATE Tasks
SET status='Closed'
where Tasks.name = @task_name and Tasks.project = @project_name and dbo.getCompany(@username)=Tasks.email
ELSE
UPDATE Tasks
SET status='Assigned', deadline=@deadline
where Tasks.name = @task_Name and Tasks.project = @project_name and dbo.getCompany(@username)=Tasks.email
END
END