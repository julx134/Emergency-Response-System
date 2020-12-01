INSERT INTO LOGISTICS
VALUES(1,2,4,100,TO_DATE('26/10/2020','DD/MM/YYYY'));

INSERT INTO LOGISTICS
VALUES(3,2,4,100,TO_DATE('28/10/2020','DD/MM/YYYY'));

INSERT INTO LOGISTICS
VALUES(2,2,4,100,TO_DATE('10/11/2020','DD/MM/YYYY'));

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
VALUES('General Surgery', '00001');

INSERT INTO doctors
VALUES('Neurosurgery', '00002');

INSERT INTO nurses
VALUES('00003', 'Registered Nurse');

INSERT INTO nurses
VALUES('00004', 'Medical-surgical Nurse');

INSERT INTO nurses
VALUES('00005', 'Intensive Care Unit Registered Nurse');

INSERT INTO nurses
VALUES('00006', 'Nursing Assistant');

INSERT INTO Law_Enforcement
VALUES('Police', '00009');

INSERT INTO Law_Enforcement
VALUES('Fireman', '00010');

INSERT INTO Operations_Staff
VALUES('Front-desk Specialist', '00007');

INSERT INTO Operations_Staff
VALUES('Operations Manager', '00008');

INSERT INTO Patients
VALUES('1','Dominique Rodriguez', '20', 'M', '12312', '78012','Nausea');

INSERT INTO Patients
VALUES('2','Allyson Teofima', '32', 'F', '11312', '32012','Nausea');

INSERT INTO Patients
VALUES('3','Merci Tefioux', '26', 'M', '12332', '18542','Flu');

INSERT INTO Patients
VALUES('4','Anderson Silva', '29', 'M', '13222', '53902','Internal Bleeding');

INSERT INTO Patients
VALUES('5','Monica Mercedes', '16', 'F', '12312', '98012','Flu');

INSERT INTO Patients
VALUES('6','Brook Lopez', '20', 'M', '15512', '23012','Flu');

INSERT INTO Bed
VALUES('1','1', DEFAULT);

INSERT INTO Bed
VALUES('2','2', DEFAULT);

INSERT INTO Bed
VALUES('3','3', 'Y');

INSERT INTO Bed
VALUES('4','4', 'Y');

INSERT INTO Bed
VALUES('5','5', DEFAULT);

INSERT INTO Bed
VALUES('6','6', 'Y');

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

INSERT INTO Emergency_Contact
VALUES('Melina Mercedes', 'Mother', '415900213','501 Shelby Drive', '5');

INSERT INTO Emergency_Contact
VALUES('Dwayne Rodriguez', 'Father', '516321021','151 Toute Ave', '1');

INSERT INTO Medicine_Prescription
VALUES('1','4','3 times a day', '3 months');

INSERT INTO Medicine_Prescription
VALUES('2','1','1 times a day', '1 week');

INSERT INTO Medicine_Prescription
VALUES('3','3','2 times a day', '1 month');

INSERT INTO Date_Admitted
VALUES(TO_DATE('26/11/2020','DD/MM/YYYY'), TO_DATE('26/10/2020','DD/MM/YYYY'), '1');

INSERT INTO Date_Admitted
VALUES(TO_DATE('15/11/2020','DD/MM/YYYY'), TO_DATE('28/10/2020','DD/MM/YYYY'), '2');

INSERT INTO Date_Admitted
VALUES(DEFAULT, TO_DATE('28/10/2020','DD/MM/YYYY'), '3');

INSERT INTO Date_Admitted
VALUES(DEFAULT, TO_DATE('28/10/2020','DD/MM/YYYY'), '4');

INSERT INTO Date_Admitted
VALUES(TO_DATE('12/12/2020','DD/MM/YYYY'), TO_DATE('10/11/2020','DD/MM/YYYY'), '5');

INSERT INTO Date_Admitted
VALUES(DEFAULT, TO_DATE('10/11/2020','DD/MM/YYYY'), '6');



