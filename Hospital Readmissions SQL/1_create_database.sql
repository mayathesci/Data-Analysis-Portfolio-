-- =========================================
-- Hospital Readmission SQL Analysis
-- Database and Table Creation Script
-- =========================================

-- Create project database
CREATE DATABASE IF NOT EXISTS hospital_readmission;
USE hospital_readmission;

-- Create hospital readmissions table
CREATE TABLE hospital_readmissions (
    patient_id VARCHAR(50) DEFAULT NULL,
    admission_date DATE DEFAULT NULL,
    season VARCHAR(50) DEFAULT NULL,
    age INT DEFAULT NULL,
    gender VARCHAR(20) DEFAULT NULL,
    region VARCHAR(50) DEFAULT NULL,
    primary_diagnosis VARCHAR(100) DEFAULT NULL,
    comorbidities_count INT DEFAULT NULL,
    length_of_stay INT DEFAULT NULL,
    treatment_type VARCHAR(100) DEFAULT NULL,
    medications_count INT DEFAULT NULL,
    followup_visits_last_year INT DEFAULT NULL,
    prev_readmissions INT DEFAULT NULL,
    insurance_type VARCHAR(50) DEFAULT NULL,
    discharge_disposition VARCHAR(100) DEFAULT NULL,
    readmission_risk FLOAT DEFAULT NULL,
    label INT DEFAULT NULL
);
