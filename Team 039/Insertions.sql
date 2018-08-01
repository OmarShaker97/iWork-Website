 -- Insert Companies
 Insert INTO Companies( email , name , address , domain , type, vision ,specialization ) values('microsoft@microsoft.com', 'Microsoft' , 'Microsoft Corporation One Microsoft Way Redmond, WA 98052-6399 USA' , '@microsoft.edu',
 'international','to help individuals and businesses realize their full potential.',' Microsoft is the developer and distributor of Microsoft Windows 
  , Microsoft Office, DirectX, XBOX, and numerous other programs and games.'
  )
  Insert INTO Companies( email , name , address , domain , type, vision ,specialization ) values('flo@hotmail.com' ,'FLO' ,'36 street zamalek' , ' @flo.edu' ,'national' , 'We are seeking to get a perfect source of water' 
  ,'Food & Beverage Company')

  Insert INTO Companies( email , name , address , domain , type, vision ,specialization ) values('askibm@vnet.ibm.com' ,'IBM','IBM National Publications
  4800 Falls of The Neause
   BRaleigh, NC 27609' , ' @ibm.edu' ,'international' , 'to be the world’s most
    successful and important information technology company. Successful in helping out customers
    apply technology to solve their problems. Successful
    in introducing this extraordinary technology to new customers. Important' ,'sell mainframe-class computers')

	-- Insert Company Phones
  Insert INTO Companies_Phones( phone , email) values(16948 , 'flo@hotmail.com')
  Insert INTO Companies_Phones( phone , email) values(16949, 'flo@hotmail.com')
  Insert INTO Companies_Phones( phone , email) values(18921 , 'askibm@vnet.ibm.com')
  Insert INTO Companies_Phones( phone , email) values(19940 , 'microsoft@microsoft.com')


-- Insert Departments

   Insert INTO Departments (code , name , email) values(301 , 'Finance' , 'flo@hotmail.com')
   Insert INTO Departments (code , name , email) values(302 , 'HR - District Sales' , 'flo@hotmail.com')
   Insert INTO Departments (code , name , email) values(303 , 'Sales' , 'flo@hotmail.com')
   Insert INTO Departments (code , name , email) values(311 , 'Purchase' , 'flo@hotmail.com')

   Insert INTO Departments (code , name , email) values(304 , 'Finance' , 'askibm@vnet.ibm.com')
   Insert INTO Departments (code , name , email) values(305 , 'HR - District Sales' , 'askibm@vnet.ibm.com')
   Insert INTO Departments (code , name , email) values(306 , 'Sales' , 'askibm@vnet.ibm.com')
   Insert INTO Departments (code , name , email) values(310 , 'Purchase' , 'askibm@vnet.ibm.com')

   Insert INTO Departments (code , name , email) values(307 , 'Finance' , 'microsoft@microsoft.com')
   Insert INTO Departments (code , name , email) values(308 , 'HR - District Sales' , 'microsoft@microsoft.com')
   Insert INTO Departments (code , name , email) values(309 , 'Sales' , 'microsoft@microsoft.com')
   Insert INTO Departments (code , name , email) values(312 , 'Purchase' , 'microsoft@microsoft.com')

   -- Insert Jobs

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Senior Engineer',304,'askibm@vnet.ibm.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Sales Manager',305,'askibm@vnet.ibm.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Software Developer',306,'askibm@vnet.ibm.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Senior Engineer',301,'flo@hotmail.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Sales Manager',302,'flo@hotmail.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Software Developer',311,'flo@hotmail.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'12/7/2017',40,50)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Senior Engineer',307,'microsoft@microsoft.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Sales Manager',308,'microsoft@microsoft.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Software Developer',309,'microsoft@microsoft.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',304,'askibm@vnet.ibm.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',304,'askibm@vnet.ibm.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',305,'askibm@vnet.ibm.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',306,'askibm@vnet.ibm.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',305,'askibm@vnet.ibm.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',306,'askibm@vnet.ibm.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Regular - Technician',310,'askibm@vnet.ibm.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',301,'flo@hotmail.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',301,'flo@hotmail.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',303,'flo@hotmail.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',303,'flo@hotmail.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',302,'flo@hotmail.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',302,'flo@hotmail.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',311,'flo@hotmail.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'12/7/2017',40,50)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',307,'microsoft@microsoft.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',307,'microsoft@microsoft.com','this is the engineer responsible to lead the projects','when engineers work on a project there must be a person that guides them to get the most efficency finish in the fastest time',5,100000,'2017-7-11',50,36)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',308,'microsoft@microsoft.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',308,'microsoft@microsoft.com','this is the person responsible for sales','when sales people work on a project there must be a person that guides them to get the most efficency finish in the fastest time',10,150000,'2017-7-12',40,37)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('HR - District Sales',309,'microsoft@microsoft.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',309,'microsoft@microsoft.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Manager - General Manager',312,'microsoft@microsoft.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)

Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Regular - Technician',301,'flo@hotmail.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Regular - Technician',309,'microsoft@microsoft.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('Regular - Technician',306,'askibm@vnet.ibm.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',40,50)
Insert INTO Jobs( title , code ,email , short_description,   detailed_description,   min_experience,   salary,   deadline,  no_of_vacancies, working_hours) values('ceo',306,'askibm@vnet.ibm.com','this is the person responsible for running the company ','A good leader can make the company work with the highest possible efficency in all departments',20,1500000,'2017-7-12',0,50)

-- Insert Questions

   INSERT INTO Questions VALUES( 1 , 'The best-qualified candidate always get the job', '0') -- 0 is false
   INSERT INTO Questions VALUES( 2 , 'The first few minutes of the interview are the most important','1') -- 1 is true
   INSERT INTO Questions VALUES(3, 'You should wear consevaive clothes to an interview.','1')
   INSERT INTO Questions VALUES(4, 'Preparing for an interview is a waste of time', '0')

   -- Insert Questions for Jobs

  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Senior Engineer','301','flo@hotmail.com', 1)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Senior Engineer','301','flo@hotmail.com', 2)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Senior Engineer','301','flo@hotmail.com', 3)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Senior Engineer','301','flo@hotmail.com', 4)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Sales Manager','308','microsoft@microsoft.com',1)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Sales Manager','308','microsoft@microsoft.com',2)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Sales Manager','308','microsoft@microsoft.com',3)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('Sales Manager','308','microsoft@microsoft.com',4)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('HR - District Sales',304,'askibm@vnet.ibm.com', 1)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('HR - District Sales',301,'flo@hotmail.com',2)
  INSERT INTO Jobs_has_Questions(title,code ,email , number) VALUES('HR - District Sales',308,'microsoft@microsoft.com',3)

-- Insert Users
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('hamdy','123','hamdy@yahoo.com','1/1/1970','50','Hamdy','Saleh','Hesham')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mido','123','mido@yahoo.com','1/1/1960','50','Mahmoud','Saleh','Antar')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('midi','132','midi@yahoo.com','1/1/1980','10','Mario','Luigi','Pizza')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mada','321','mada@yahoo.com','1/1/1950','70','Frank','Asprin','Einstein')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('dina','333','dina@yahoo.com','4/12/1990','7','dina','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('sara','444','sara@yahoo.com','3/10/1990','8','sara','mohamed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('yara','555','yara@yahoo.com','4/5/1990','9','yara','galal','moustafa')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('hana','673','hana@yahoo.com','4/12/1970','15','hana','dawoood','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mayar','938','mayar@yahoo.com','3/10/1970','14','mayar','mahmoud','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('kinda','300','kinda@yahoo.com','4/5/1970','13','kinda','wagdy','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('hanan','736','hanan@yahoo.com','4/12/1970','20','hanan','saber','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('noura','645','noura@yahoo.com','3/10/1994','1','noura','samy','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('samy','918','samy@yahoo.com','4/5/1993','2','samy','mohamed','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('omar','omarzzz','omar@yahoo.com','4/5/1970','30','omar','mohamed','ahmed')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mimi','328','mimi@yahoo.com','4/12/1995','3','mimi','malek','dawood')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('tara','329','tara@yahoo.com','3/10/1995','5','tara','mimi','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('malak','330','malak@yahoo.com','4/5/1995','9','malak','yoyo','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('marwa','331','marwa@yahoo.com','4/12/1960','33','marwa','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('rana','332','rana@yahoo.com','3/10/1980','12','rana','ahmed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('sukkary','337','sukkary@yahoo.com','4/5/1990','6','nada','sukkary','moustafa')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mahmoud','328','mahmoud@yahoo.com','1/12/1996','3','mahmoud','malek','dawood')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('ahmed','329','ahmed@yahoo.com','5/10/1999','5','ahmed','mimi','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('gigi','330','gigi@yahoo.com','6/5/1980','9','gigi','yoyo','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('soso','331','soso@yahoo.com','3/12/1970','33','soso','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('lala','332','lala@yahoo.com','2/10/1980','12','lala','ahmed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('lili','337','lili@yahoo.com','8/5/1990','6','lili','sukkary','moustafa')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('fefe','328','mahmoud@yahoo.com','1/12/1990','3','fefe','malek','dawood')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('fofo','329','ahmed@yahoo.com','5/10/1990','5','fofo','mimi','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('bolbol','330','gigi@yahoo.com','6/5/1980','9','bolbol','yoyo','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('soad','331','soso@yahoo.com','3/12/1960','33','soad','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('dana','332','lala@yahoo.com','2/10/1970','12','dana','ahmed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('yassm','337','lili@yahoo.com','8/5/1990','6','yassm','sukkary','moustafa')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mariam','328','mariam@yahoo.com','1/12/1990','3','mariam','malek','dawood')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('nour','329','noue@yahoo.com','5/11/1990','5','nour','mimi','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('keke','330','keke@yahoo.com','6/9/1990','9','keke','yoyo','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('kyky','331','kyky@yahoo.com','3/8/1970','33','kyky','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('kiki','332','kiki@yahoo.com','2/6/1980','12','kiki','ahmed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('dodo','337','dodo@yahoo.com','3/5/1990','6','dodo','sukkary','moustafa')

 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('dydy','328','dydy@yahoo.com','1/1/1990','4','dydy','malek','dawood')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('dada','329','dada@yahoo.com','5/7/1960','33','dada','mimi','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('zizi','330','zizi@yahoo.com','6/5/1990','6','zizi','yoyo','moustafa')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('suu','331','suu@yahoo.com','3/1/1960','34','suu','ahmed','malek')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('sasa','332','sasa@yahoo.com','2/5/1990','12','sasa','ahmed','youssef')
 insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('mohamed','323','mohamed@yahoo.com','1/1/1960','50','mohamed','Saleh','Antar')
   insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('abdullah','323','abdullah@yahoo.com','1/1/1960','50','abdullah','gaber','Antar')
  
   insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('tasneem','32313','tasneem@yahoo.com','1/1/1960','50','Tasneem','Ahmed','Samy')
    insert into Users(username , password , personal_email , birth_date , years_of_experience , first_name ,middle_name,last_name)  VALUES ('nagwa','123','nagwa@yahoo.com','1/1/1960','50','Nagwa','Ahmed','Samy')

 
 -- Insert Jobs for Users

 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'mido')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'tara')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'dina')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'marwa')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'sara')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'rana')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'bolbol')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'soad')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'yassm')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'nour')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'mariam')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'noura')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'keke')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'samy')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'dodo')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'mimi')
 INSERT INTO Users_Jobs(job , username) VALUES('HR - District Sales' , 'sasa')
  INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'nagwa')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'ahmed')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'mohamed')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'gigi')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'soso')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'lala')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'lili')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'hana')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'mayar')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'kinda')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'hanan')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'fofo')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'fefe')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'kyky')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'kiki')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'dydy')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'dada')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'suu')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'zizi')
 INSERT INTO Users_Jobs(job , username) VALUES('Manager - General Manager' , 'malak')
 INSERT INTO Users_Jobs(job , username) VALUES('Regular - Technician' , 'tara')
 INSERT INTO Users_Jobs(job , username) VALUES('Regular - Technician' , 'marwa')
 INSERT INTO Users_Jobs(job , username) VALUES('Regular - Technician' , 'rana')
 INSERT INTO Users_Jobs(job , username) VALUES('Regular - Technician' , 'sukkary')
  INSERT INTO Users_Jobs(job , username) VALUES('Regular - Technician' , 'yara')
  

-- Insert Job Seekers

INSERT INTO Job_Seekers(username) VALUES ('mido')
INSERT INTO Job_Seekers(username) VALUES ('midi')
INSERT INTO Job_Seekers(username) VALUES ('mada')
INSERT INTO Job_Seekers(username) VALUES ('omar')
INSERT INTO Job_Seekers(username) VALUES ('yassm')
INSERT INTO Job_Seekers(username) values ('tasneem')


-- Insert Staff Members

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('mido','2', 'mada@flo.edu','Tuesday','1500000','HR - District Sales','304','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('tara','2','tara@flo.edu','Tuesday','1500000','HR - District Sales','304','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('ahmed','2','ahmed@ibm.edu','Tuesday','1040000','Manager - General Manager','304','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('mohamed','2','mohamed@ibm.edu','Tuesday','1500000','Manager - General Manager','304','askibm@vnet.ibm.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('hamdy','6', 'hamdy@ibm.edu','Thursday','1500000','HR - District Sales','305','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('marwa','4','marwa@ibm.edu','Tuesday','1500000','HR - District Sales','305','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('gigi','3','gigi@ibm.edu','Tuesday','1500000','Manager - General Manager','305','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('soso','2','soso@ibm.edu','Tuesday','1500000','Manager - General Manager','305','askibm@vnet.ibm.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('sara','6', 'sara@ibm.edu','Tuesday','1500000','HR - District Sales','306','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('rana','4','rana@ibm.edu','Tuesday','1500000','HR - District Sales','306','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('lala','3','lala@ibm.edu','Tuesday','1500000','Manager - General Manager','306','askibm@vnet.ibm.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('lili','2','lili@ibm.edu','Tuesday','1500000','Manager - General Manager','306','askibm@vnet.ibm.com')
    INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('nagwa','2','nagwa@ibm.edu','Tuesday','1500000','Manager - General Manager','305','askibm@vnet.ibm.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('yara','2','yara@ibm.edu','Monday','1003000','Regular - Technician','310','askibm@vnet.ibm.com')
   INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('dina','6', 'dina@ibm.edu','Tuesday','1500000','HR - District Sales','305','askibm@vnet.ibm.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('bolbol','5','bolbol@flo.edu','Monday','1400000','HR - District Sales','301','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('soad','6','soad@flo.edu','Saturday','1300000','HR - District Sales','301','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('hana','5','hana@flo.edu','Monday','1400000','Manager - General Manager','301','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('mayar','6','mayar@flo.edu','Saturday','1300000','Manager - General Manager','301','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('yassm','5','yassm@flo.edu','Monday','1400000','HR - District Sales','303','flo@hotmail.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('kinda','5','kinda@flo.edu','Monday','1400000','Manager - General Manager','303','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('hanan','6','hanan@flo.edu','Saturday','1300000','Manager - General Manager','303','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('nour','5','nour@flo.edu','Monday','1400000','HR - District Sales','302','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('mariam','6','mariam@flo.edu','Saturday','1300000','HR - District Sales','302','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('fofo','5','fof@flo.edu','Monday','1400000','Manager - General Manager','302','flo@hotmail.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('fefe','6','fefe@flo.edu','Saturday','1300000','Manager - General Manager','302','flo@hotmail.com')

  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('noura','5','noura@microsoft.edu','Monday','1400000','HR - District Sales','307','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('keke','5','keke@microsoft.edu','Monday','1400000','HR - District Sales','307','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('kyky','5','kyky@microsoft.edu','Monday','1400000','Manager - General Manager','307','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('kiki','5','kiki@microsoft.edu','Monday','1400000','Manager - General Manager','307','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('samy','6','samy@microsoft.edu','Saturday','1300000','HR - District Sales','308','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('dodo','6','dodo@microsoft.edu','Saturday','1300000','HR - District Sales','308','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('dydy','6','dydy@microsoft.edu','Saturday','1300000','Manager - General Manager','308','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('dada','6','dada@microsoft.edu','Saturday','1300000','Manager - General Manager','308','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('mimi','5','mimi@microsoft.edu','Monday','1400000','HR - District Sales','309','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('sasa','5','sasa@microsoft.edu','Monday','1400000','HR - District Sales','309','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('suu','5','suu@microsoft.edu','Monday','1400000','Manager - General Manager','309','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('zizi','5','zizi@microsoft.edu','Monday','1400000','Manager - General Manager','309','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('malak','6','malak@microsoft.edu','Saturday','1300000','Manager - General Manager','312','microsoft@microsoft.com')
  INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('sukkary','6','sukkary@ibm.edu','Saturday','1300000','Regular - Technician','306','askibm@vnet.ibm.com')
     INSERT into Staff_Members(username,annual_leaves,company_email,day_off,salary,title,code,email) values ('abdullah','6','abdullah@microsoft.edu','Saturday','1300000','Manager - General Manager','308','microsoft@microsoft.com')
 -- Insert Job Seekers that apply to jobs

 INSERT into Job_Seekers_apply_Jobs(title ,code , email ,username , hr_response , manager_response ,score) values ( 'HR - District Sales',304,'askibm@vnet.ibm.com','mido' , 'accepted' ,'accepted' ,98)
INSERT into Job_Seekers_apply_Jobs(title ,code , email ,username , hr_response , manager_response ,score) values ('HR - District Sales',301,'flo@hotmail.com','midi' ,'accepted' , 'pending' ,90)
INSERT into Job_Seekers_apply_Jobs(title ,code , email ,username , hr_response , manager_response ,score) values ('HR - District Sales',308,'microsoft@microsoft.com','mada','rejected' ,'rejected' ,60)
INSERT INTO Job_Seekers_apply_Jobs(title,code,email,username,hr_response, manager_response, score) values ('HR - District Sales',305,'askibm@vnet.ibm.com','omar','pending','pending',35)

INSERT into Job_Seekers_apply_Jobs(title ,code , email ,username , hr_response , manager_response ,score) values ('HR - District Sales',305,'askibm@vnet.ibm.com','yassm','pending' ,'pending' ,60)
INSERT into Job_Seekers_apply_Jobs(title ,code , email ,username , hr_response , manager_response ,score) values ( 'HR - District Sales',304,'askibm@vnet.ibm.com','tasneem' , 'accepted' ,'accepted' ,98)  


 -- Insert Attendance 

 insert into Attendance_Records(date,start_time,end_time,staff) values ('2017-12-11','08:16:00','23:16:00','marwa')
 insert into Attendance_Records(date,start_time,end_time,staff) values ('2017-12-12','07:16:00','23:16:00','yara')
 insert into Attendance_Records(date,start_time,end_time,staff) values ('2017-12-12','06:16:00','23:16:00','mayar')

  insert into Emails  (serial_number , Subject ,date , body ) VALUES (1 , 'Checking' , '2017-11-9', 'Just seeing if you are able to recieve this email.')
  insert into Emails  (serial_number , Subject ,date , body ) VALUES (2 , 'FLO' , '2017-12-9', 'This is a reminder that we have a campaign to do next Monday.')
  insert into Emails  (serial_number , Subject ,date , body ) VALUES (3 , 'Project' , '2017-7-9', 'Meeting next sunday')
  insert into Emails  (serial_number , Subject ,date , body ) VALUES (50, 'Help', '2017-7-9', 'Need your help tomorrow')
  INSERT INTO Staff_send_Email_Staffs( email_number,   recipient , sender) VALUES (1 ,'rana' , 'marwa')
   INSERT INTO Staff_send_Email_Staffs( email_number,   recipient , sender) VALUES (50 ,'yassm' , 'mayar')

  insert into HR_Employees(username) VALUES ('mido')
  insert into HR_Employees(username) VALUES ('tara')
  insert into HR_Employees(username) VALUES ('hamdy')
  insert into HR_Employees(username) VALUES ('dina')
    insert into HR_Employees(username) VALUES ('sara')
    insert into HR_Employees(username) VALUES ('marwa')
  insert into HR_Employees(username) VALUES ('samy')
  insert into HR_Employees(username) VALUES ('bolbol')
  insert into HR_Employees(username) VALUES ('soad')
  insert into HR_Employees(username) VALUES ('abdullah')



  
  insert into Regular_Employees(username) VALUES ('tara')
  insert into Regular_Employees(username) VALUES ('rana')
  insert into Regular_Employees(username) VALUES ('suu')
    insert into Regular_Employees(username) VALUES ('sukkary')
  insert into Regular_Employees(username) VALUES ('yara')
  insert into Regular_Employees(username) VALUES ('sasa')
  insert into Regular_Employees(username) VALUES ('yassm')



    insert into Managers(username , type) VALUES ('kinda' ,'Technical')
    insert into Managers(username, type) VALUES ('hanan' , 'hr')
        insert into Managers(username , type) VALUES ('zizi' ,'Technical')
    insert into Managers(username, type) VALUES ('malak' , 'hr')
        insert into Managers(username , type) VALUES ('dydy' ,'Technical')
    insert into Managers(username, type) VALUES ('dada' , 'hr')
    insert into Managers(username, type) VALUES ('mayar' , 'hr')
	   insert into Managers(username, type) VALUES ('nagwa' , 'hr')
  
  



  insert INTO Annoucements(date ,title ,hr_employee ,type ,description) values ('2017-11-22' , 'Cheap Trips','marwa','Trips','Exclusive discounts for trips for your family next summer')
  insert INTO Annoucements(date ,title ,hr_employee ,type ,description) values ('2017-9-12' ,  'Important!! Extra Work','mido','Extra hours','To deploy our software next month, we need employees to be working extra hours.')
  insert INTO Annoucements(date ,title ,hr_employee ,type ,description) values ('2017-8-6' , 'Our new CEO','tara','New CEO','Congratulating Mahmoud Ekramy on becoming the new CEO of the company.')
  insert INTO Annoucements(date ,title ,hr_employee ,type ,description) values ('2017-12-13' , 'Cheap Trips!!','soad', 'Trips', 'Exclusive discounts for trips for your family next summer')
  --insert into Requests(start_date ,applicant ,end_date ,request_date , hr_employee, hr_response , manager , manager_response , manager_reason) values ( '2017-12-2','rana','2017-12-3','2017-1-1','marwa','accepted','mahmoud','accepted', '~Accepted~' )--omar
  --insert into Requests(start_date ,applicant ,end_date ,request_date , hr_employee, hr_response , manager , manager_response , manager_reason) values ( '2017-12-6','hana','2017-12-8','2017-1-1', 'marwa','accepted','mahmoud','rejected','Loads of work' )--omar
  
	 -- sa7
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response , manager_reason) values ( '2017-11-13','mido','2017-11-11','2017-11-12' ,'bolbol' ,'accepted' ,'hanan' ,'rejected', 'A lot of work you have to finish this week' )
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response) values ( '2017-12-12','rana','2017-11-15','2017-11-12' ,'soad' ,'accepted' ,'kinda' ,'accepted')
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response) values ( '2017-4-2','kiki','2017-11-15','2017-11-12' ,'samy' ,'accepted' ,'dada' ,'accepted')
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response , manager_reason) values ( '2017-4-3','kiki','2017-11-15','2017-11-12' ,'samy' ,'pending' ,'dada' ,'rejected', 'You just came back from a holiday.' )
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response) values ( '2017-4-4','kiki','2017-11-15','2017-11-12' ,'samy' ,'pending' ,'dada' ,'accepted' )
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response , manager_reason) values ( '2017-12-14','sukkary','2017-11-15','2017-11-12' ,'samy' ,'pending' ,'dada' ,'pending', 'pending' )
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response) values ( '2017-4-6','dodo','2017-11-15','2017-11-12' ,'abdullah' ,'pending' ,'dada' ,'accepted')
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response) values ( '2017-12-12','yassm','2017-11-15','2017-11-12' ,'soad' ,'accepted' ,'mayar' ,'accepted')
  insert into Requests(start_date ,applicant ,end_date ,request_date , hr_response , manager_response) values ( '2018-1-1','yassm','2017-11-15','2017-11-12','pending','pending')
  insert into Requests(start_date ,applicant ,end_date ,request_date ,  hr_employee, hr_response , manager , manager_response, manager_reason) values ( '2017-1-8','yassm','2017-11-15','2017-11-12' ,'soad' ,'rejected' ,'mayar' ,'rejected', 'Too many Requests')

  insert into Leave_Requests(start_date,applicant,type) values ('2017-12-12','rana','Honey moon')
  insert into Leave_Requests(start_date,applicant,type) values ('2017-11-13','mido','Wife giving birth')
   
  insert into Business_Trip_Requests(start_date,applicant,destination,purpose) values ('2017-12-14','sukkary','Paris','Have an important meeting in Paris.')
  insert into Business_Trip_Requests(start_date,applicant,destination,purpose) values ('2017-4-2','kiki','Berlin','Giving important lectures to employees')

  insert into Regular_Employee_apply_replace_Requests(start_date ,applicant,reg_employee,replacement) values ('2017-12-12','rana','sukkary','rana')
  insert into Regular_Employee_apply_replace_Requests(start_date ,applicant,reg_employee,replacement) values ('2017-11-13','mido','yara','sukkary')
  insert into Regular_Employee_apply_replace_Requests(start_date ,applicant,reg_employee,replacement) values ('2017-12-14','sukkary','rana','yara')
  
  insert into Manager_apply_replace_Requests(start_date ,applicant , reg_employee ,replacement) values ('2017-4-2','kiki','mayar','hanan')

  insert into Projects(name ,email,start_date,end_date,manager) values ('Project X','askibm@vnet.ibm.com','2017-12-14','2018-12-14','zizi') 
  insert into Projects(name ,email,start_date,end_date,manager) values ('Clockwork Orange','flo@hotmail.com','2017-12-14','2018-12-14','kinda') 
  insert into Projects(name ,email,start_date,end_date,manager) values ('Blazing Saddles','microsoft@microsoft.com','2017-12-14','2018-12-14','hanan')
  insert into Projects(name ,email,start_date,end_date,manager) values ('Project X','microsoft@microsoft.com','2017-12-14','2018-12-14','hanan') 
  insert into Projects(name ,email,start_date,end_date,manager) values ('Clockwork Orange','microsoft@microsoft.com','2017-12-14','2018-12-14','hanan')  
    insert into Projects(name ,email,start_date,end_date,manager) values ('Project X','flo@hotmail.com','2017-12-14','2018-12-14','hanan')
	 insert into Projects(name ,email,start_date,end_date,manager) values ('database','flo@hotmail.com','2017-12-14','2018-12-14','hanan')
  
  insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ('Project X','askibm@vnet.ibm.com','sukkary','kinda')
  insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ( 'Clockwork Orange', 'flo@hotmail.com','tara','dada')
  insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ('Blazing Saddles', 'microsoft@microsoft.com',  'rana','hanan')
   insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ('Project X', 'microsoft@microsoft.com',  'rana','hanan')
       insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ('Project X', 'flo@hotmail.com',  'yassm','kinda')
	     insert into Manager_assign_Regular_Employee_Projects( project_name ,   email,   regular_employee ,   manager) values ('database', 'flo@hotmail.com',  'yassm','hanan')


  insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('Deimos','Clockwork Orange','microsoft@microsoft.com','2019-12-14','Assigned','collecting the parts','tara','hanan')
  insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('Archimedes','Project X','microsoft@microsoft.com','2019-12-14','Assigned','assymbling the parts','rana','hanan')
  insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('Saddles','Blazing Saddles','microsoft@microsoft.com','2019-12-14','Fixed','manufacturing the parts','rana','hanan')
     insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('The Graduate','Project X','microsoft@microsoft.com','2019-12-14','Assigned','manufacturing the parts','sukkary','hanan')
   insert into Tasks(name,project,email,deadline,status ,description,manager) values ('Firewall Implementation','Project X','flo@hotmail.com','2019-12-14','Open','manufacturing the parts','hanan')
   insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('Farnir','Project X','flo@hotmail.com','2019-12-14','Fixed','manufacturing the parts','yassm','kinda')
    insert into Tasks(name,project,email,deadline,status ,description,regular_employee,manager) values ('Archimedes','Project X','flo@hotmail.com','2019-12-14','Assigned','manufacturing the parts','yassm','kinda')

  insert into Task_Comments(task_name,project,company,comment) VALUES ('Archimedes','Project X','microsoft@microsoft.com','Awesome')
  insert into Task_Comments(task_name,project,company,comment) VALUES ('Saddles','Blazing Saddles','microsoft@microsoft.com','Balabizo')
