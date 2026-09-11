/*Table schema for storing the patient records from the comma-separated-values*/
CREATE TABLE patients (
    patient_id VARCHAR(20), -- hospital-assigned patient id
    age INT, -- age of the patient
    gender VARCHAR(20), -- gender of the patient
    state VARCHAR(50), -- state of origin of the patient
    diagnosis VARCHAR(100), -- medical diagnosis recored
    admission_date DATE, -- date of hospital admission
    discharge_date DATE, -- date the patient was discharged or expected to be discharged
    admission_type VARCHAR(50), -- type of hospital admission
    department VARCHAR(100), -- department where the patient was admitted
    length_of_stay INT, -- length of stay in the hospital
    treatment_cost INT, -- cost of the treatment
    insurance_status VARCHAR(100), -- insurance of the patient
    outcome VARCHAR(50) -- treatment outcome
);