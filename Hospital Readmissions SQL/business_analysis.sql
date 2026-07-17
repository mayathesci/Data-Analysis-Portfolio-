-- Business Analysis 
-- Question 1:  Which [rimary diagnosis are driving readmission?

-- Readmission rate by primary diagnosis 

SELECT 
    primary_diagnosis, 
    COUNT(patient_id) AS 'Total Patients',    
    SUM(Label) AS 'Total Readmissions',
    ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY primary_diagnosis
ORDER BY SUM(Label) DESC;  

-- Question 2: Which patient characteristics are associated with readmissions? 

-- Readmission rate by age group 

SELECT 
    CASE
        WHEN age <= 39 THEN 'Young (18-39)'
        WHEN age BETWEEN 40 AND 64 THEN 'Middle Aged (40-64)'
        ELSE 'Older (65+)'
    END AS age_group, 
    COUNT(patient_id) AS 'Total Patients',
    SUM(label) AS 'Total Readmissions',
    ROUND(AVG(label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY age_group;

-- Readmission rate by number of comorbidities

SELECT 
    comorbidities_count, 
    COUNT(patient_id) AS 'Total Patients',
    SUM(Label) AS 'Total Readmissions',
    ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY comorbidities_count
ORDER BY comorbidities_count desc;

-- Readmission rate by gender

Select gender,  
COUNT(patient_id) AS 'Total Patients',
SUM(Label) AS 'Total Readmissions',
ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY gender; 

-- Readmission rate by number of previous admissions

Select prev_readmissions,
COUNT(patient_id) AS 'Total Patients',
SUM(Label) AS 'Total Readmissions',
ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY prev_readmissions
ORDER by prev_readmissions ASC; 

-- Question 3: Which treatments are associated with lower readmission rates? 

-- Readmission rate by treatment type 

Select treatment_type,
COUNT(patient_id) AS 'Total Patients',
SUM(Label) AS 'Total Readmissions',
ROUND(AVG(Label) * 100, 2) AS 'Readmission Rate (%)'
FROM hospital_readmissions
GROUP BY treatment_type
ORDER BY 'Readmission Rate (%)' ASC;


-- Question 4: What does a high-risk patient portfolio look like? 

-- High risk cohort readmission rate
SELECT 
    COUNT(patient_id) AS `High-Risk Patients`,
    ROUND(AVG(Label) * 100, 2) AS `Readmission Rate (%)`
FROM hospital_readmissions
WHERE comorbidities_count >= 5
  AND age >= 65
  AND prev_readmissions >= 2; 
  
-- Question 5: Among high-risk patients, which primary diagnoses and treatment types are associated with the greatest likelihood of readmission?

-- High risk patients by diagnosis 
SELECT 
    primary_diagnosis, 
    COUNT(patient_id) AS `High-Risk Patients`,
    ROUND(AVG(Label) * 100, 2) AS `Readmission Rate (%)`
FROM hospital_readmissions
WHERE comorbidities_count >= 5
  AND age >= 65
  AND prev_readmissions >= 2
GROUP BY primary_diagnosis
ORDER BY `High-Risk Patients` DESC;


-- High risk patients by treatment type 
SELECT 
    treatment_type,
    COUNT(patient_id) AS `High-Risk Patients`,
    ROUND(AVG(Label) * 100, 2) AS `Readmission Rate (%)`
FROM hospital_readmissions
WHERE comorbidities_count >= 5
  AND age >= 65
  AND prev_readmissions >= 2
GROUP BY treatment_type
ORDER BY `High-Risk Patients` DESC;
