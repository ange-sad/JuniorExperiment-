----����һ�����ݿ�EDUC
--CREATE DATABASE EDUC

----����ѧ����student
--CREATE TABLE Student
--(
--Sno CHAR(8) PRIMARY KEY,
--Sname VARCHAR(20) UNIQUE,
--Ssex CHAR(6),
--Sbirthdate Date,
--Smajor VARCHAR(20)
--);

----����ѡ�α�Course
--CREATE TABLE Course
--(

--Cno CHAR(5)PRIMARY KEY,
--Cname VARCHAR(40) NOT NULL,
--Ccredit SMALLINT,
--Cpno CHAR(5),
--FOREIGN KEY(Cpno) REFERENCES Course(Cno)
--);

----����ѧ��ѡ�α�ӣ�
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


----����ѧ�������ݡ�����һ���������������Ҫ����
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180001', '����', '��','2000-3-8','��Ϣ��ȫ');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180002', '����', 'Ů','1999-9-1','�������ѧ�뼼��');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180003', '����', 'Ů','2001-8-1','�������ѧ�뼼��');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180004', '����', '��','2000-1-8','�������ѧ�뼼��');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180005', '������', '��','2001-11-8','��Ϣ��������Ϣϵͳ');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180006', '����', '��','2000-6-12','���ݿ�ѧ������ݼ���');
--INSERT INTO Student(Sno, Sname, Ssex,Sbirthdate,Smajor)
--VALUES('20180007', '���Ѽ�', 'Ů','2001-12-7','���ݿ�ѧ������ݼ���');


----����γ̱����ݡ�����һ���������������Ҫ����
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81001', '������ƻ����������', '4',NULL);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81002', '���ݽṹ', '4',81001);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81003', '���ݿ�ϵͳ����', '4',81002);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81004', '��Ϣϵͳ����', '4',81003);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81005', '����ϵͳ', '4',81001);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81006', 'Python����', '4',81002);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81007', '��ɢ��ѧ', '4',NULL);
--INSERT INTO Course(Cno, Cname, Ccredit, Cpno)
--VALUES('81008', '������ϵͳ����', '4',81003);


---- ����ѡ�α�
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

----��������
--UPDATE Student
--SET Sbirthdate='2000-3-8'
--WHERE Sno ='20180001';

----��������
--UPDATE Course
--SET Cname='������ƻ����������'
--WHERE Cno ='81001';







-------------------------------�ڶ���ʵ��-----------------------------------------


----1.��ѯ����ѧ��������������
--SELECT Sname ,YEAR(GETDATE())-YEAR(Sbirthdate) AS Age
--From Student;


----2.��ѯѡ��81002�ſγ̵�ѧ��ѧ�źͳɼ�
--SELECT Sno,Grade
--FROM SC
--WHERE Cno = '81002'
--ORDER BY Grade DESC, Sno ASC;


----3.��ѯѡ����81003ѧ�ſγ��ҳɼ���85-90֮���ѧ��
--SELECT Sno,Grade 
--FROM SC
--WHERE Cno = '81003'
--AND Grade BETWEEN 85 AND 90;

----4.��ѯ�������ѧ�뼼�������ݿ�ѧ������ݼ���רҵѧ������Ϣ
--SELECT * 
--FROM Student 
--WHERE Smajor IN ('�������ѧ�뼼��', '���ݿ�ѧ������ݼ���');

----5.��ѯÿ��ѧ��������Լ�����������ѡ�޵Ŀγ���������ʱ�䡢����ѧ�ڼ���ѧ��
--SELECT S.Sno,S.Sname, C.Cname, SC.Teachingclass
--FROM Student S
--JOIN SC ON S.SNO = SC.Sno
--JOIN Course C ON SC.Cno = C.Cno;

----6.��ѯѡ���ˡ����ݿ�ϵͳ���ۡ��γ̵�ѧ����ѧ�š��������ɼ�
--SELECT S.Sno, S.Sname, SC.Grade
--FROM Student S
--JOIN SC ON S.Sno = SC.Sno
--JOIN Course C ON SC.Cno = C.Cno
--WHERE C.Cname = '���ݿ�ϵͳ����';


----7.��ѯÿһ�ſɵü�����޿�
--SELECT C.Cno, C.Cname,C2.Cno AS '���޿ογ̺�',C2.Cname AS '���޿�'
--FROM Course C
--JOIN Course C2 ON C.Cpno = C2.Cno;



----8. 
--SELECT SUM(C.Ccredit) AS SumCredit
--FROM SC
--JOIN Course C ON SC.Cno = C.Cno
--WHERE SC.Sno = '20180001';

----9.��ѯÿ�ſγ̺ź�ѡ�޸ÿγ̵�����
--SELECT C.Cno, C.Cname, COUNT(SC.Sno) AS StudentCount
--FROM SC
--JOIN Course C ON SC.Cno = C.Cno
--GROUP BY C.Cno, C.Cname;


----10.��ѯѡ�޿γ̳���2�ſε�ѧ��ѧ�ţ�
--SELECT SC.Sno ,S.Sname
--FROM SC
--JOIN Student S ON SC.Sno = S.Sno
--GROUP BY SC.Sno, S.Sname
--HAVING COUNT(SC.Cno) > 2;



--------------------------������ʵ��----------------------------
----1.������ͼ

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
----��ѯ��֤
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
----��ѯ��֤
--SELECT *
--FROM V_S_C_G

----(3)
--CREATE VIEW V_NUM_AVG(Smajor, Scount, AvgAge)
--as
--SELECT Smajor, Count(S.Smajor), AVG(YEAR(GETDATE())-YEAR(Sbirthdate))
--FROM Student S
--GROUP BY Smajor
------��ѯ��֤
--SELECT *
--FROM V_NUM_AVG

----(4)
--CREATE VIEW V_YEAR(Name, Birthdate)
--AS 
--SELECT S.Sname, S.Sbirthdate
--FROM Student S
----��ѯ��֤
--SELECT *
--FROM V_YEAR

----(5)
--CREATE VIEW V_AVG_S_G(Sno,Sname, CourseNum, AvgGrade)
--AS 
--SELECT S.Sno,S.Sname,  Count(SC.Cno), AVG(SC.Grade)
--FROM Student S
--JOIN SC ON S.Sno = SC.Sno
--GROUP BY S.Sno,S.Sname

--��ѯ��֤
--SELECT *
--FROM V_AVG_S_G
----(6)
--CREATE VIEW V_AVG_C_G(Cname, Number, AvgGrade)
--AS
--SELECT C.Cname, COUNT(C.Cno),AVG(SC.Grade) 
--From Course C,SC
--WHERE C.Cno = SC.Cno
--GROUP BY C.Cno, C.Cname;
----��ѯ��֤
--SELECT *
--FROM V_AVG_C_G



-------------------------2.��ѯ��ͼ--------------------
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