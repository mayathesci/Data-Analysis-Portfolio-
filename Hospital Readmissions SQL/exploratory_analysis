-- exploratory_analysis 
-- Question 1: How serious is the hospital readmission problem? 

-- Total patients
-- Verified each patient is unique in "data.quality.assuranc_SQL"

SELECT COUNT(patient_id) AS 'Total Patients'
FROM hospital_readmissions;

-- Average patient age

SELECT avg(age) as 'Average Patient Age' 
FROM hospital_readmissions;

-- Youngest patient 

SELECT MIN(Age) AS 'Youngest Patient'
FROM hospital_readmissions; 

-- Oldest patient

SELECT MAX(age) AS 'Oldest Patient'
FROM hospital_readmissions; 

-- Average length of stay 

SELECT avg(length_of_stay) as 'Average Length of Stay'
FROM hospital_readmissions;

-- Total Readmissions 

SELECT COUNT(patient_id) AS 'Total Readmissions'
FROM hospital_readmissions
WHERE Label = '1';

-- Readmission rate 

SELECT ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions;

-- Highest number of previous admissions in a single patient

SELECT MAX(prev_readmissions) AS 'Max Previous Admissions'
FROM hospital_readmissions;

-- Comparing length of stay and average comoridities between readmitted vs non-readmitted patients

SELECT LABEL AS 'Readmitted (1=yes, 0=no)', AVG(length_of_stay) AS 'Average Length of Stay', AVG(comorbidities_count) as 'Average Comoridities' 
FROM hospital_readmissions
Group by LABEL;

-- Patient Count by Number of Previous Readmissions 
SELECT 
    prev_readmissions AS 'Number of Prev Readmissions',
    COUNT(patient_id) AS 'Patient Count',
    ROUND(COUNT(patient_id) * 100.0 / 8000, 2) AS 'Percentage of Cohort (%)'
FROM hospital_readmissions
GROUP BY prev_readmissions
ORDER BY prev_readmissions ASC;
