create table patient_diagnosis1 (patient_id number(3),name varchar,address varchar,pharmacy_code number(2),disease varchar,AdmissionDate date,DischargeDate date
);
insert into patient_diagnosis1 values(100,'swathi','Hyderabad',20,'cold','2024-10-11','2024-10-15');
insert into patient_diagnosis1 values(101,'veena','DL',30,'fever','2024-11-11','2024-11-15');
insert into patient_diagnosis1 values(102,'vani','UP',30,'cancer','2024-8-11','2024-10-15');
insert into patient_diagnosis1 values(103,'renu','HP',20,'pain','2024-9-11','2024-10-15');
insert into patient_diagnosis1 values(104,'swetha','AP',20,'fever','2024-7-11','2024-7-15');

CREATE MATERIALIZED VIEW AvgStayByDisease AS
SELECT disease, AVG(DATEDIFF(DAY, AdmissionDate, DischargeDate)) AS
AvgStay
FROM patient_diagnosis1
GROUP BY disease;
SELECT * FROM AvgStayByDisease;