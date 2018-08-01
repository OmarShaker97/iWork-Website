-- As an registered/unregistered user

-- 1. Using name
exec  Search 'FLO' 

-- 1. Using address
exec  searchbyaddress '36 street zamalek'

-- 1. Using type
exec  searchbytype 'international'

-- 2.
exec  View_All_Available_Companies

-- 3.
exec  View_departments  'flo@hotmail.com'

-- 4.
exec View_Jobs 'flo@hotmail.com',301

-- 5.
exec Register 'Shayqer', 'anagamedgedan', 'omarshaker97@outlook.com', '9/17/1963', 20,'Omar','Amr','Shaker'

-- 6. Using title
exec Search_JobsVacancies_Title 'reg'

-- 6. Using Short Description
exec Search_JobsVacancies_Description 'responsible'

-- 7.
exec View_Highest_AVG_Companies 

-- As a registered user

-- 1.
exec Signin 'Shayqer', 'anagamedgedan'

-- 2.
exec View_All_Info 'Shayqer'

-- 3.
exec Edit_Personal_Info 'Shayqer', 'MET4thewin', 'thebacket_man@yahoo.com', null, null, null, null, null

-- As a job seeker

-- 1.
exec Apply_For_Job 'Shayqer', 'Regular - Technician', 301, 'flo@hotmail.com'

-- 2.
exec View_Interview_Questions 'mido'

-- 3.
exec Save_Score 'Shayqer', 0

-- 4.
exec View_Job_Status 'mido'

-- 5.
exec Choose_Job 'tasneem', 'HR - District Sales', 'Saturday', 'askibm@vnet.ibm.com'

-- 6.
exec Delete_Application 'omar', 'HR - District Sales', 'askibm@vnet.ibm.com'

-- As a staff member

-- 1.
exec Check_in 'hana'

-- 2.
exec Check_out 'hana'

-- 3.
exec Staff_View_Attendance 'yassm'

-- 4. Applying for leave requests

exec Apply_For_Leave_Requests 'hana', '12-12-2017','1-1-2018','My husband needs me with him on his business trip.'

-- 4. Applying for business requests

exec Apply_For_Business_Requests 'ahmed', '2018-5-4','2018-5-10', 'New York, US','I have an important meeting in the united nations'

-- 5.
exec View_Status 'hana'

-- 6.
exec Delete_Requests 'hana', '12-12-2017'

-- 7.
exec send_emails 'tara','sara', 'Important Meeting', 'I need you to be present next meeting as we have a lot to talk about.'

-- 8.
exec View_Emails 'sara'

-- 9.
exec Reply_To_Emails 'sara', 'tara', 'Reply: Important Meeting', 'Do not worry, I will be there.'

-- 10.
exec View_Annoucements 'tara'

-- As an HR Employee

-- 1. Add a new job
exec Add_Job 'marwa', 'Regular Employee - Accountant', 'Prepares asset, liability, and capital account entries', 'Documents financial transactions by 
entering account information. Recommends financial actions by analyzing accounting options. Summarizes current financial status by collecting 
information; preparing balance sheet, profit and loss statement, and other reports.', 5, 1000, '2018-1-1', 20, 8

-- 1. Add questions to it
exec Add_Job_Questions 'marwa', 'Regular Employee - Accountant', 1

-- 2.
exec View_Job 'marwa', 'Regular Employee - Accountant'

-- 3.
exec Edit_Job 'marwa', 'Regular Employee - Accountant', null, null, 2, 3000, null, null, null

-- 4.
exec View_New_Applications 'marwa'

-- 5.
exec Respond_Job_Applications 'marwa', 'HR - District Sales', 'yassm', 'accepted'

-- 6.
exec Post_Annoucements 'marwa','Technical Issues', 'Company Related', 'We are sorry for inconvience yesterday as we were facing problems with our system. It is fixed now hopefully.'

-- 7.
exec View_Requests 'samy'

-- 8.
exec Respond_Requests 'soad', 'accepted', 'rana', '12-12-2017'

-- 9.
exec HR_View_Attendance 'marwa'

-- As a regular employee

-- 1.
exec Viewprojects 'rana'

-- 2.
exec Viewtasks 'rana', 'Blazing Saddles'

-- 3.
exec Finalizetask 'rana', 'Deimos'

-- 4.
exec WorkonTaskAgain 'rana', 'Deimos'

-- As a manager

-- 1.
exec MviewRequests 'dada'

-- 2.
exec RespondtoRequest 'dada','2017-4-6','dodo' , 'accepted' , ''

-- 3.
exec viewapp 'nagwa', 'HR - District Sales'  --pass 123

-- 4.
exec Respondtoapp 'mayar' , 'HR - District Sales','midi' , 'accepted' --pass 123

-- 5.
exec Newproject  'kinda','project  Y' ,'flo@hotmail.com' , '2017-12-14' , '2018-12-14'  --PASS 300

-- 6.
exec AssignProject 'kinda' , 'database' , 'flo@hotmail.com' , 'yassm' 

-- 7.
exec Remove_Regular_Employees 'hanan', 'yassm', 'database'

-- 8.
exec Define_Task 'hanan', 'Building an engine 4', 'Project X','2017-12-12','This build engine registration represents a Rational Build Agent process on a build machine that handles build requests.' --pass 300

-- 9.
exec Assign_Reg_Employee 'hanan', 'Building an engine', 'Project X', 'yassm'

-- 10.
exec Change_Reg_Employee 'hanan', 'Building an engine', 'Project X', 'sasa'

-- 11.
exec View_Tasks 'zizi', 'Project X', 'Open'

-- 12.
exec Review_Task 'hanan', 'Building an engine', 'Project X', 'accepted', NULL