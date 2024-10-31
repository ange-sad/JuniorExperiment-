----创建一个数据库EDUC
--CREATE DATABASE EDUC

----创建学生表student
--CREATE TABLE Student
--(
--Sno CHAR(8) PRIMARY KEY,
--Sname VARCHAR(20) UNIQUE,
--Ssex CHAR(6),
--Sbirthdate Date,
--Smajor VARCHAR(20)
--);

----创建选课表Course
--CREATE TABLE Course
--(

--Cno CHAR(5)PRIMARY KEY,
--Cname VARCHAR(40) NOT NULL,
--Ccredit SMALLINT,
--Cpno CHAR(5),
--FOREIGN KEY(Cpno) REFERENCES Course(Cno)
--);

----创建学生选课表ＳＣ
--CREATE TABLE SC
--(
--Sno CHAR(8),
--Cno CHAR(5),
--Grade SMALLINT,
--Semester CHAR(5),
--Teachingclass CHAR(8),
--PRIMARY KEY(Sno,Cno),
--FOREIGN KEY(Sno) REFERENCES Student(Sno),
--FOREIGN KEY(Cno) REFERENCES Course(Cno),

--);


----插入学生表数据　　第一行数据输入错误需要更新
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180001', '李勇', '男','2000-3-8','信息安全');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180002', '刘晨', '女','1999-9-1','计算机科学与技术');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180003', '王敏', '女','2001-8-1','计算机科学与技术');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180004', '张立', '男','2000-1-8','计算机科学与技术');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180005', '陶新奇', '男','2001-11-8','信息管理与信息系统');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180006', '赵明', '男','2000-6-12','数据科学与大数据技术');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180007', '王佳佳', '女','2001-12-7','数据科学与大数据技术');


----插入课程表数据　　第一行数据输入错误需要更新
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81001', '程序设计基础与Ｃ语言', '4',NULL);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81002', '数据结构', '4',81001);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81003', '数据库系统概论', '4',81002);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81004', '信息系统概论', '4',81003);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81005', '操作系统', '4',81001);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81006', 'Python语言', '4',81002);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81007', '离散数学', '4',NULL);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81008', '大数据系统概论', '4',81003);


---- 插入选课表
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180001','81001',85, '20192', '81001-01');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180001','81002',96, '20201', '81002-01');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180001','81003',87, '20202', '81003-01');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180002','81001',80, '20192', '81001-02');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180002','81002',98, '20201', '81002-01');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180002','81003',71, '20202', '81003-02');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180003','81001',81, '20192', '81001-01');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180003','81002',76, '20201', '81001-02');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180004','81001',56, '20192', '81001-02');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180004','81002',97, '20201', '81002-02');
--INSERT INTO SC(Sno, Cno, Grade, Semester, Teachingclass)
--VALUES('20180005','81003',68, '20202', '81003-01');

----更新数据
--UPDATE Student
--SET Sbirthdate='2000-3-8'
--WHERE Sno ='20180001';

----更新数据
--UPDATE Course
--SET Cname='程序设计基础与Ｃ语言'
--WHERE Cno ='81001';







-------------------------------第二次实验-----------------------------------------


----1.查询所有学生的姓名和年龄
--SELECT Sname ,YEAR(GETDATE())-YEAR(Sbirthdate) AS Age
--From Student;


----2.查询选修81002号课程的学生学号和成绩
--SELECT Sno,Grade
--FROM SC
--WHERE Cno = '81002'
--ORDER BY Grade DESC, Sno ASC;


----3.查询选修了81003学号课程且成绩在85-90之间的学生
--SELECT Sno,Grade 
--FROM SC
--WHERE Cno = '81003'
--AND Grade BETWEEN 85 AND 90;

----4.查询计算机科学与技术，数据科学与大数据技术专业学生的信息
--SELECT * 
--FROM Student 
--WHERE Smajor IN ('计算机科学与技术', '数据科学与大数据技术');

----5.查询每个学生的情况以及他（她）所选修的课程名、开课时间、开课学期及教学班
--SELECT S.Sno,S.Sname, C.Cname, SC.Teachingclass
--FROM Student S
--JOIN SC ON S.SNO = SC.Sno
--JOIN Course C ON SC.Cno = C.Cno;

----6.查询选修了“数据库系统概论”课程的学生的学号、姓名、成绩
--SELECT S.Sno, S.Sname, SC.Grade
--FROM Student S
--JOIN SC ON S.Sno = SC.Sno
--JOIN Course C ON SC.Cno = C.Cno
--WHERE C.Cname = '数据库系统概论';


----7.查询每一门可得间接先修课
--SELECT C.Cno, C.Cname,C2.Cno AS '先修课课程号',C2.Cname AS '先修课'
--FROM Course C
--JOIN Course C2 ON C.Cpno = C2.Cno;



----8. 
--SELECT SUM(C.Ccredit) AS SumCredit
--FROM SC
--JOIN Course C ON SC.Cno = C.Cno
--WHERE SC.Sno = '20180001';

----9.查询每门课程号和选修该课程的人数
--SELECT C.Cno, C.Cname, COUNT(SC.Sno) AS StudentCount
--FROM SC
--JOIN Course C ON SC.Cno = C.Cno
--GROUP BY C.Cno, C.Cname;


----10.查询选修课程超过2门课的学生学号：
--SELECT SC.Sno ,S.Sname
--FROM SC
--JOIN Student S ON SC.Sno = S.Sno
--GROUP BY SC.Sno, S.Sname
--HAVING COUNT(SC.Cno) > 2;



--------------------------第三次实验----------------------------
----1.创建视图

------(1)
--CREATE VIEW V_Computer(
--V_Sno ,
--V_Sname ,
--V_Ssex ,
--V_Sbirthdate ,
--V_Smajor 
--)
--AS
--SELECT *
--FROM Student;
----查询验证
--SELECT *
--FROM V_computer
------(2)
--CREATE VIEW V_S_C_G(
--Sno, 
--Sname,
--Cno,
--Cname,
--Grade
--)
--AS
--SELECT S.Sno, S.Sname, C.Cno,C.Cname,SC.Grade
--FROM Student S, Course C, SC
--WHERE (S.Sno = SC.Sno) AND(C.Cno = SC.Cno)
----查询验证
--SELECT *
--FROM V_S_C_G

----(3)
--CREATE VIEW V_NUM_AVG(Smajor, Scount, AvgAge)
--as
--SELECT Smajor, Count(S.Smajor), AVG(YEAR(GETDATE())-YEAR(Sbirthdate))
--FROM Student S
--GROUP BY Smajor
------查询验证
--SELECT *
--FROM V_NUM_AVG

----(4)
--CREATE VIEW V_YEAR(Name, Birthdate)
--AS 
--SELECT S.Sname, S.Sbirthdate
--FROM Student S
----查询验证
--SELECT *
--FROM V_YEAR

----(5)
--CREATE VIEW V_AVG_S_G(Sno,Sname, CourseNum, AvgGrade)
--AS 
--SELECT S.Sno,S.Sname,  Count(SC.Cno), AVG(SC.Grade)
--FROM Student S
--JOIN SC ON S.Sno = SC.Sno
--GROUP BY S.Sno,S.Sname

--查询验证
--SELECT *
--FROM V_AVG_S_G
----(6)
--CREATE VIEW V_AVG_C_G(Cname, Number, AvgGrade)
--AS
--SELECT C.Cname, COUNT(C.Cno),AVG(SC.Grade) 
--From Course C,SC
--WHERE C.Cno = SC.Cno
--GROUP BY C.Cno, C.Cname;
----查询验证
--SELECT *
--FROM V_AVG_C_G



-------------------------2.查询视图--------------------
----(1)
--SELECT Sno, Sname, AvgGrade
--FROM V_AVG_S_G 
--WHERE V_AVG_S_G.AvgGrade >=85
----(2)
--SELECT Smajor, Scount,AvgAge
--FROM V_NUM_AVG
--WHERE (Scount<5)AND(AvgAge>18)

----(3)
--Drop View V_YEAR