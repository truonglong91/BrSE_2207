create database	Testing_System_Assignment_1;

create table Department(
DepartmentID	int,
DepartmentName	varchar(30)
);

create table `Position`(
PositionID	int,
PositionName	varchar(30)
);

create table `Account`(
AccountID	int,
Email	varchar(30),
Username	varchar(30),
FullName	varchar(30),
DepartmentID	int,
PositionID	int,
CreateDate	date
);

create table `Group`(
GroupID	int,
GroupName	varchar(30),
CreatorID	int,
CreateDate	date
);

create table GroupAccount(
GroupID	int,
AccountID	int,
JoinDate	date
);

create table TypeQuestion(
TypeID	int,
TypeName	varchar(20)
);

create  table CategoryQuestion(
CategoryID	int,
CategoryName	varchar(20)
);

create table Question(
QuestionID	int,
Content	varchar(100),
CategoryID	int,
TypeID	int,
CreatorID	int,
CreateDate	date
);

create table Answer(
AnswerID	int,
Content	varchar(100),
QuestionID	int,
isCorrect	varchar(10)
);

create table Exam(
ExamID	int,
`Code`	varchar(20),
Title	varchar(30),
CategoryID	int,
Duration	time,
CreatorID	int,
CreateDate	date
);

create table ExamQuestion(
ExamID	int,
QuestionID	int
);
