INSERT INTO LOGISTICS
VALUES(1,2,4,10,100,TO_DATE('26/10/2020','DD/MM/YYYY'));

INSERT INTO LOGISTICS
VALUES(3,2,4,10,100,TO_DATE('28/10/2020','DD/MM/YYYY'));

INSERT INTO LOGISTICS
VALUES(2,2,4,10,100,TO_DATE('10/11/2020','DD/MM/YYYY'));

INSERT INTO EMPLOYEE
VALUES('Ahmed Khan', '12345','00001','doctor'); 

INSERT INTO EMPLOYEE
VALUES('Jules Gammad', '01234','00002','doctor'); 

INSERT INTO EMPLOYEE
VALUES('Jane Doe', '12334','00003','nurses'); 

INSERT INTO EMPLOYEE
VALUES('John Doe', '12445','00004','nurses'); 

INSERT INTO EMPLOYEE
VALUES('Tatiana Mesau', '12355','00005','nurses'); 

INSERT INTO EMPLOYEE
VALUES('Constantino Mello', '11345','00006','nurses'); 

INSERT INTO EMPLOYEE
VALUES('Christopher Jielo ', '11340','00007','operations staff'); 

INSERT INTO EMPLOYEE
VALUES('Melani Tot', '10045','00008','operations staff'); 

INSERT INTO EMPLOYEE
VALUES('Teo Mani', '00345','00009','law enforcement'); 

INSERT INTO EMPLOYEE
VALUES('Ian Refut', '11305','00010','law enforcement'); 

INSERT INTO account
VALUES('admin', 'cusadmin', 'A', '00007');

INSERT INTO account
VALUES('admin2', 'cusadmin2', 'A', '00008');

INSERT INTO account
VALUES('akhan', 'admin', 'B', '00001');

INSERT INTO account
VALUES('jgammad', 'admin', 'B', '00002');

INSERT INTO doctors
VALUES('General Surgery', DEFAULT, 00001);

INSERT INTO doctors
VALUES('Neurosurgery', DEFAULT, 00002);

INSERT INTO nurses
VALUES(DEFAULT, '00003');

INSERT INTO nurses
VALUES(DEFAULT, '00004');

INSERT INTO nurses
VALUES(DEFAULT, '00005');

INSERT INTO nurses
VALUES(DEFAULT, '00006');

INSERT INTO Law_Enforcement
VALUES('Police', '00009', DEFAULT);

INSERT INTO Law_Enforcement
VALUES('Fireman', '00010', DEFAULT);

INSERT INTO Operations_Staff
VALUES(DEFAULT, '00007');

INSERT INTO Operations_Staff
VALUES(DEFAULT, '00008');

INSERT INTO Patients
VALUES('1','Dominique Rodriguez', '20', 'M', '12312', '78012','Nausea',TO_DATE('26/10/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Patients
VALUES('2','Allyson Teofima', '32', 'F', '11312', '32012','Nausea',TO_DATE('28/10/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Patients
VALUES('3','Merci Tefioux', '26', 'M', '12332', '18542','Flu',TO_DATE('28/10/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Patients
VALUES('4','Anderson Silva', '29', 'M', '13222', '53902','Internal Bleeding',TO_DATE('28/10/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Patients
VALUES('5','Monica Mercedes', '16', 'F', '12312', '98012','Flu',TO_DATE('10/11/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Patients
VALUES('6','Brook Lopez', '20', 'M', '15512', '23012','Flu',TO_DATE('10/11/2020','DD/MM/YYYY'), DEFAULT);

INSERT INTO Bed
VALUES('1',TO_DATE('26/10/2020','DD/MM/YYYY'),'1');

INSERT INTO Bed
VALUES('2',TO_DATE('28/10/2020','DD/MM/YYYY'),'2');

INSERT INTO Bed
VALUES('3',TO_DATE('28/10/2020','DD/MM/YYYY'),'3');

INSERT INTO Bed
VALUES('4',TO_DATE('28/10/2020','DD/MM/YYYY'),'4');

INSERT INTO Bed
VALUES('5',TO_DATE('10/11/2020','DD/MM/YYYY'),'5');

INSERT INTO Bed
VALUES('6',TO_DATE('10/11/2020','DD/MM/YYYY'),'6');

INSERT INTO MEDICINE
VALUES('1','Ibuprofen','Painkiller','200');

INSERT INTO MEDICINE
VALUES('2','Zofran','Anti-nausea','50');

INSERT INTO MEDICINE
VALUES('3','Zanamivir','Flu medicine', '2000');

INSERT INTO Emergency_Contact
VALUES('Dayane Silva', 'Wife', '416322091','1532 John Street', '4');

INSERT INTO Emergency_Contact
VALUES ('Rafael Lopez', 'Brother', '3123244500','1420 Leli Drive', '6');

INSERT INTO Medicine_Prescription
VALUES('1','4','3 times a day', '3 months');

INSERT INTO Medicine_Prescription
VALUES('2','1','1 times a day', '1 week');

INSERT INTO Medicine_Prescription
VALUES('3','3','2 times a day', '1 month');



