INSERT INTO Users (first_name, last_name, email, phone, registered_at, last_login)
VALUES
('Ivan', 'Petrov', 'ivan.petrov@example.com', '0888123456', '2023-01-12', '2023-12-01'),
('Georgi', 'Dimitrov', 'georgi.d@example.com', '0888123000', '2023-02-05', '2023-11-22'),
('Maria', 'Ivanova', 'm.ivanova@example.com', '0889111122', '2023-03-01', '2023-11-20'),
('Elena', 'Stoyanova', 'elena.st@example.com', '0889333444', '2023-03-10', NULL),
('Petar', 'Kolev', 'p.kolev@example.com', '0889222333', '2023-04-08', '2023-12-02'),
('Nikolay', 'Nikolov', 'n.nikolov@example.com', '0899001122', '2023-05-20', '2023-12-10'),
('Katia', 'Hristova', 'k.hristova@example.com', '0888555666', '2023-06-15', NULL),
('Rosen', 'Vasilev', 'rosen.v@example.com', '0888000999', '2023-07-01', '2023-11-01'),
('Simona', 'Kostova', 'simona.k@example.com', '0888122999', '2023-08-18', NULL),
('Valeri', 'Todorov', 'valeri.t@example.com', '0899555666', '2023-09-21', '2023-12-15');

INSERT INTO Location (country, city, region)
VALUES
('Bulgaria', 'Sofia', 'Sofia-city'),
('Bulgaria', 'Plovdiv', 'Plovdiv-region'),
('Bulgaria', 'Varna', 'Varna-region'),
('Bulgaria', 'Burgas', 'Burgas-region'),
('Bulgaria', 'Ruse', 'Ruse-region'),
('Germany', 'Berlin', 'Berlin-state'),
('Germany', 'Munich', 'Bavaria'),
('UK', 'London', 'London-area'),
('USA', 'New York', 'NY-state'),
('USA', 'Chicago', 'Illinois');

INSERT INTO Company (name, industry, website, created_at)
VALUES
('SoftVision', 'IT', 'softvision.com', '2018-03-12'),
('TechForge', 'Technology', 'techforge.io', '2019-07-21'),
('MarketHub', 'E-commerce', 'markethub.net', '2020-01-14'),
('FinancePro', 'Finance', 'financepro.org', '2017-11-30'),
('DevCore', 'IT', 'devcore.dev', '2016-05-05'),
('AutoDrive', 'Automotive', 'autodrive.com', '2015-09-10'),
('HealthLine', 'Healthcare', 'healthline.bg', '2014-12-01'),
('EduWorld', 'Education', 'eduworld.edu', '2021-04-10'),
('GreenFuture', 'Energy', 'greenfuture.energy', '2022-06-01'),
('BizConsult', 'Consulting', 'bizconsult.biz', '2019-02-18');

INSERT INTO Job (title, description, salary_from, salary_to, category, posted_at, is_active, company_id, location_id)
VALUES
('Software Dev', 'Develop software apps', 3000, 6000, 'IT', '2023-10-01', 1, 1, 1),
('QA Engineer', 'Testing systems', 2500, 4500, 'IT', '2023-09-21', 1, 1, 1),
('Project Manager', 'Manage IT projects', 4000, 7000, 'Management', '2023-09-20', 1, 2, 1),
('Data Analyst', 'Analyze datasets', 2800, 5000, 'Data', '2023-08-12', 0, 3, 2),
('HR Specialist', 'HR tasks', 2000, 3500, 'HR', '2023-07-30', 1, 4, 1),
('Frontend Dev', 'HTML/CSS/JS dev', 3200, 5500, 'IT', '2023-08-15', 1, 5, 1),
('Backend Dev', 'Server-side dev', 3300, 5800, 'IT', '2023-06-22', 0, 5, 1),
('Nurse', 'Patient care', 1800, 2800, 'Healthcare', '2023-10-10', 1, 7, 3),
('Teacher', 'School teaching', 1700, 2300, 'Education', '2023-09-05', 1, 8, 4),
('Accountant', 'Financial work', 2200, 3600, 'Finance', '2023-08-18', 1, 4, 1),
('Mechanical Eng', 'Machines', 2600, 4200, 'Engineering', '2023-10-02', 1, 6, 2),
('Electrician', 'Electrical repair', 1900, 2800, 'Technical', '2023-09-11', 0, 6, 2),
('UX Designer', 'Design UI/UX', 2700, 4500, 'Design', '2023-09-24', 1, 1, 1),
('DevOps Eng', 'Cloud infra', 3500, 6500, 'IT', '2023-10-15', 1, 2, 1),
('Data Scientist', 'ML models', 4000, 8000, 'AI', '2023-10-12', 1, 3, 1),
('Mobile Dev', 'Mobile apps', 3000, 5500, 'IT', '2023-07-22', 1, 5, 2),
('Marketing Spec', 'Marketing tasks', 2200, 3300, 'Marketing', '2023-08-02', 1, 3, 1),
('Sales Rep', 'Sales role', 1800, 2400, 'Sales', '2023-10-01', 1, 9, 5),
('Energy Eng', 'Green energy', 3000, 4700, 'Energy', '2023-09-22', 1, 9, 10),
('Business Consult', 'Business advice', 3300, 5200, 'Consulting', '2023-10-03', 1, 10, 1);

INSERT INTO Skill (name)
VALUES
('C#'), ('JavaScript'), ('SQL'), ('Python'), ('Java'),
('Project Management'), ('Data Analysis'), ('Communication'),
('HTML/CSS'), ('DevOps'), ('React'), ('Node.js'),
('Machine Learning'), ('NoSQL'), ('Docker'), ('Kubernetes'),
('Accounting'), ('Marketing'), ('Teaching'), ('Healthcare');

INSERT INTO JobSkill (job_id, skill_id)
VALUES
(1,1),(1,2),(1,3),(1,9),(1,11),
(2,3),(2,7),(2,8),
(3,6),(3,8),
(4,7),(4,3),(4,4),
(5,8),
(6,2),(6,9),(6,11),
(7,1),(7,3),(7,15),
(8,20),
(9,19),
(10,17),(10,8),
(11,7),(11,13),
(12,14),
(13,11),(13,8),
(14,10),(14,15),(14,16),
(15,4),(15,13),(15,14),
(16,2),(16,11),
(17,18),
(18,8),(18,17),
(19,13),(19,14),
(20,6),(20,8),(20,17);

INSERT INTO Resume (user_id, summary, created_at)
VALUES
(1, 'Experienced software developer.', '2023-04-10'),
(2, 'QA specialist with automation skills.', '2023-05-02'),
(3, 'Data analyst with Python knowledge.', '2023-06-14'),
(4, 'HR specialist with experience.', '2023-03-21'),
(5, 'Frontend dev passionate about UI.', '2023-09-01'),
(6, 'Backend developer using .NET.', '2023-07-22'),
(7, 'Nurse with 5 years experience.', '2023-10-20'),
(8, 'Teacher in elementary school.', '2023-09-25'),
(9, 'Marketing specialist.', '2023-06-11'),
(10,'Business consultant.', '2023-08-14');


INSERT INTO Application (user_id, job_id, status, applied_at, cover_letter)
VALUES
(1,1,'Submitted','2023-10-05','I am motivated.'),
(1,14,'Submitted','2023-10-16','Interested in DevOps.'),
(2,2,'Reviewed','2023-09-25','Experienced QA.'),
(2,6,'Submitted','2023-08-29','Frontend skills.'),
(3,4,'Submitted','2023-08-15','Strong data skills.'),
(3,15,'Reviewed','2023-10-13','ML background.'),
(4,5,'Submitted','2023-08-01','Experienced HR.'),
(5,6,'Interview','2023-09-14','Strong frontend knowledge.'),
(5,13,'Submitted','2023-10-01','Passionate designer.'),
(6,7,'Rejected','2023-07-30','Backend expertise.'),
(6,14,'Submitted','2023-10-16','Cloud engineering.'),
(7,8,'Submitted','2023-10-12','Healthcare experience.'),
(8,9,'Submitted','2023-09-10','Teaching passion.'),
(9,17,'Submitted','2023-08-10','Marketing knowledge.'),
(10,20,'Interview','2023-10-05','Business analysis.'),
(1,3,'Submitted','2023-09-25','Project management skills.'),
(2,4,'Rejected','2023-07-20','Looking for data role.'),
(3,1,'Submitted','2023-10-02','Software & analytics.'),
(4,10,'Submitted','2023-09-12','Finance interest.'),
(5,11,'Submitted','2023-09-22','Engineering mindset.'),
(6,12,'Submitted','2023-09-02','Technical knowledge.'),
(7,18,'Submitted','2023-10-19','Sales interest.'),
(8,17,'Reviewed','2023-08-29','Marketing experience.'),
(9,3,'Submitted','2023-10-03','Management skills.'),
(10,6,'Rejected','2023-08-18','Frontend ideas.'),
(3,13,'Submitted','2023-09-29','UI/UX interest.'),
(4,19,'Submitted','2023-10-01','Green energy.'),
(6,15,'Interview','2023-10-14','AI interest.'),
(2,1,'Submitted','2023-09-30','C# QA automation.'),
(5,14,'Submitted','2023-10-15','DevOps passion.');
