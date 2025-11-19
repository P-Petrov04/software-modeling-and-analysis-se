CREATE DATABASE JobsBG
GO

USE JobsBG
GO

CREATE TABLE Users (
    user_id        INT IDENTITY PRIMARY KEY,
    first_name     NVARCHAR(20),
    last_name      NVARCHAR(20),
    email          NVARCHAR(30) UNIQUE NOT NULL,
    phone          NVARCHAR(15),
    registered_at  DATETIME,
    last_login     DATETIME NULL
);

CREATE TABLE Location (
    location_id INT IDENTITY PRIMARY KEY,
    country     NVARCHAR(20),
    city        NVARCHAR(20),
    region      NVARCHAR(25)
);

CREATE TABLE Company (
    company_id    INT IDENTITY PRIMARY KEY,
    name          NVARCHAR(30) UNIQUE NOT NULL,
    industry      NVARCHAR(25),
    website       NVARCHAR(40),
    created_at    DATETIME
);

CREATE TABLE Job (
    job_id          INT IDENTITY PRIMARY KEY,
    title           NVARCHAR(25) NOT NULL,
    description     NVARCHAR(MAX),
    salary_from     INT,
	salary_to		INT,
    category		NVARCHAR(30),
    posted_at       DATETIME,
    is_active		BIT,
    company_id      INT NOT NULL,
    location_id     INT,

    CONSTRAINT FK_Job_Company FOREIGN KEY (company_id)
        REFERENCES Company(company_id),

    CONSTRAINT FK_Job_Location FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

CREATE TABLE Resume (
    resume_id   INT IDENTITY PRIMARY KEY,
    user_id     INT NOT NULL,
    summary     NVARCHAR(MAX),
    created_at  DATETIME,

    CONSTRAINT FK_Resume_User FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
);

CREATE TABLE Skill (
    skill_id INT IDENTITY PRIMARY KEY,
    name     NVARCHAR(50) NOT NULL
);

CREATE TABLE JobSkill (
    job_id   INT NOT NULL,
    skill_id INT NOT NULL,

    CONSTRAINT PK_JobSkill PRIMARY KEY (job_id, skill_id),

    CONSTRAINT FK_JobSkill_Job FOREIGN KEY (job_id)
        REFERENCES Job(job_id),

    CONSTRAINT FK_JobSkill_Skill FOREIGN KEY (skill_id)
        REFERENCES Skill(skill_id)
);

CREATE TABLE Application (
    application_id INT IDENTITY PRIMARY KEY,
    user_id        INT NOT NULL,
    job_id         INT NOT NULL,
    status         NVARCHAR(50),
    applied_at     DATETIME,
	cover_letter   NVARCHAR(MAX),

    CONSTRAINT FK_Application_User FOREIGN KEY (user_id)
        REFERENCES Users(user_id),

    CONSTRAINT FK_Application_Job FOREIGN KEY (job_id)
        REFERENCES Job(job_id)
);
