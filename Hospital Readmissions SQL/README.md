Project Objective 

Repeat hospital visits increase healthcare costs, reduce operational efficiency, and may reflect opportunities to improve patient care. This project aims to identify the key factors associated with readmissions and provide actionable recommendations to help reduce preventable readmissions. 

Dataset Overview 
Time Period: 2021–2023
Records: 8,000 unique patient records
The original dataset consists of 15 columns, including patient demographics (age, gender, region), clinical information (primary diagnosis, comorbidities, previous readmissions), treatment details (treatment type, medications prescribed, length of stay), and discharge information. The target variable, label, indicates whether a patient was readmitted within 30 days of discharge (1 = Readmitted, 0 = Not Readmitted). 

Data Preparation
The dataset used in this project was pre-cleaned prior to analysis. Because the data was already prepared, no additional data cleaning or preprocessing was performed as part of this project. The analysis focused on exploring the data.

This analysis focuses on 9 key variables that are most relevant to evaluating factors associated with 30-day hospital readmissions. Columns that were not directly related to the project objectives were excluded to keep the analysis focused and concise. 


## Key Variables

![Variables Table](variablestable.png)


Findings
Readmission burden:Of the 8,000 patients analyzed, 77.29% experienced a 30-day hospital readmission, indicating a significant operational and clinical challenge.
Age-related risk: Readmission rates increased with age, with patients aged 65 years and older representing the highest-risk demographic.
Clinical complexity: Patients with five or more comorbidities had readmission rates exceeding 90%, making them the strongest candidates for targeted interventions.
Previous admissions: A history of prior readmissions was one of the strongest predictors of future readmission, with risk increasing substantially after the first readmission.
Diagnosis-specific risk: While Diabetes and Hypertension accounted for the greatest number of readmissions due to patient volume, Sepsis, COPD, Heart Failure, and Stroke exhibited the highest readmission rates.
Treatment differences: Treatment type showed only modest differences in readmission rates, although patients receiving conservative treatment experienced the highest rate of readmission.
High-risk patient portfolio: A cohort defined by age 65 or older, five or more comorbidities, and two or more previous readmissions had a 96.61% readmission rate, identifying a population that would benefit most from intensive discharge planning and follow-up care.


Recommendations
Prioritize post-discharge care for patients aged 65 years and older.
Implement enhanced care management for patients with five or more comorbidities.
Increase follow-up monitoring for patients with a history of previous readmissions.
Develop targeted transition-of-care programs for patients with high-risk diagnoses such as sepsis, kidney disease, heart failure, and pneumonia.
Evaluate the effectiveness of conservative treatment strategies to identify opportunities for reducing readmissions.
