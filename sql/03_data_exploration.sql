/* QUESTION 01. How many patients are there in the table? */
SELECT COUNT(*) FROM patients as total_patients;


/*QUESTION 02. How many of this return data contain nulls*/
SELECT COUNT(*) AS rows_with_nulls FROM patients WHERE 
    patient_id IS NULL OR
    age IS NULL OR
    gender IS NULL OR
    state IS NULL OR
    diagnosis IS NULL OR
    admission_date IS NULL OR
    discharge_date IS NULL OR
    admission_type IS NULL OR
    department IS NULL OR
    length_of_stay IS NULL OR
    treatment_cost IS NULL OR
    insurance_status IS NULL OR
    outcome IS NULL;

/*QUESTION 03. what columns exist in the table?*/
DESCRIBE patients;

/*QUESTION 04. what is the max and min age of patients?*/
SELECT MIN(age) AS min_age,
    MAX(age) AS max_age FROM patients;

/*QUESTION 05. what diseases were reported?*/
SELECT diagnosis, COUNT(diagnosis) AS frequency FROM patients GROUP BY diagnosis ORDER BY frequency DESC;

/*QUESTION 06. what is the age distribution by gender and state?*/
SELECT gender, ROUND(AVG(age)) AS Avg_age, state
    FROM patients GROUP BY gender, state;

/*QUESTION 07. which states contribute the most patients?*/
SELECT state, COUNT(*) AS total_patients FROM patients
    GROUP BY state ORDER BY total_patients DESC;

/*QUESTION 08. what is the average length of stay (in days) per department*/
SELECT department,
    ROUND(AVG(length_of_stay)) AS avg_los FROM patients
    GROUP BY department ORDER BY avg_los DESC;

SELECT * FROM patients LIMIT 10;