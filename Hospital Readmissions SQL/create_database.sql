-- =========================================
--  Hospital Readmission Risks Anaylsis 
-- Create Database and Table
-- =========================================

-- Create database
CREATE DATABASE IF NOT EXISTS hospital_readmission;
USE hospital_readmission;

-- Create table
CREATE TABLE `hospital_readmissions` (
   `patient_id` varchar(50) DEFAULT NULL,
   `admission_date` date DEFAULT NULL,
   `season` varchar(50) DEFAULT NULL,
   `age` int DEFAULT NULL,
   `gender` varchar(20) DEFAULT NULL,
   `region` varchar(50) DEFAULT NULL,
   `primary_diagnosis` varchar(100) DEFAULT NULL,
   `comorbidities_count` int DEFAULT NULL,
   `length_of_stay` int DEFAULT NULL,
   `treatment_type` varchar(100) DEFAULT NULL,
   `medications_count` int DEFAULT NULL,
   `followup_visits_last_year` int DEFAULT NULL,
   `prev_readmissions` int DEFAULT NULL,
   `insurance_type` varchar(50) DEFAULT NULL,
   `discharge_disposition` varchar(100) DEFAULT NULL,
   `readmission_risk` float DEFAULT NULL,
   `label` int DEFAULT NULL
 ) 
   