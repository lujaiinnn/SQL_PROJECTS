create database workk;
use workk;

DROP TABLE IF EXISTS Treatments, Appointments, Patients, Doctors, Departments;

-- Create Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create Doctors table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create Patients table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    birth_date DATE,
    contact_number VARCHAR(15)
);

-- Create Appointments table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    issue_description TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Create Treatments table
CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY,
    appointment_id INT,
    treatment_type VARCHAR(100),
    cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insert sample Departments
INSERT INTO Departments VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Orthopedics'),
(4, 'Pediatrics'),
(5, 'General Medicine');

-- Insert sample Doctors
INSERT INTO Doctors VALUES
(1, 'Dr. Smith', 'Cardiologist', 1, 120000),
(2, 'Dr. Allen', 'Neurologist', 2, 125000),
(3, 'Dr. Watson', 'Orthopedic Surgeon', 3, 130000),
(4, 'Dr. Jones', 'Pediatrician', 4, 110000),
(5, 'Dr. Patel', 'General Physician', 5, 100000);

-- Insert sample Patients
INSERT INTO Patients VALUES
(1, 'Alice Johnson', 'Female', '1990-03-15', '555-1234'),
(2, 'Bob Smith', 'Male', '1985-07-22', '555-5678'),
(3, 'Charlie Lee', 'Male', '2000-10-05', '555-8765'),
(4, 'Daisy Brown', 'Female', '1975-01-30', '555-3456'),
(5, 'Ethan Clark', 'Male', '1992-12-11', '555-7890');

-- Insert sample Appointments
INSERT INTO Appointments VALUES
(1, 1, 1, '2024-04-01', 'Chest pain'),
(2, 2, 2, '2024-04-03', 'Headaches'),
(3, 3, 3, '2024-04-05', 'Fracture in leg'),
(4, 4, 4, '2024-04-07', 'Fever and cough'),
(5, 5, 5, '2024-04-08', 'Regular check-up'),
(6, 1, 1, '2024-04-10', 'Follow-up chest pain'),
(7, 3, 3, '2024-04-11', 'Follow-up leg injury');

-- Insert sample Treatments
INSERT INTO Treatments VALUES
(1, 1, 'ECG Test', 300.00),
(2, 2, 'MRI Scan', 1500.00),
(3, 3, 'Leg Surgery', 5000.00),
(4, 4, 'Flu Medication', 200.00),
(5, 5, 'Blood Test', 100.00),
(6, 6, 'Stress Test', 400.00),
(7, 7, 'Cast Removal', 150.00);


-- =====================================
-- 📊 Hospital Management SQL Queries
-- =====================================

-- 1. Number of Patients per Department
SELECT 
    d.department_name,
    COUNT(DISTINCT a.patient_id) AS total_patients
FROM Appointments a
JOIN Doctors doc ON a.doctor_id = doc.doctor_id
JOIN Departments d ON doc.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_patients DESC;

-- 2. Doctor with the Most Appointments
SELECT 
    doc.name AS doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Appointments a
JOIN Doctors doc ON a.doctor_id = doc.doctor_id
GROUP BY doc.doctor_id
ORDER BY total_appointments DESC
LIMIT 1;

-- 3. Total Revenue from Treatments
SELECT 
    SUM(cost) AS total_revenue
FROM Treatments;

-- 4. Most Expensive Treatment Given
SELECT 
    treatment_type,
    cost
FROM Treatments
ORDER BY cost DESC
LIMIT 1;

-- 5. Appointment Count Per Day
SELECT 
    appointment_date,
    COUNT(*) AS num_appointments
FROM Appointments
GROUP BY appointment_date
ORDER BY appointment_date;

-- 6. Average Treatment Cost by Department
SELECT 
    d.department_name,
    ROUND(AVG(t.cost), 2) AS avg_cost
FROM Treatments t
JOIN Appointments a ON t.appointment_id = a.appointment_id
JOIN Doctors doc ON a.doctor_id = doc.doctor_id
JOIN Departments d ON doc.department_id = d.department_id
GROUP BY d.department_name;

-- 7. Patient History Report
SELECT 
    p.name AS patient_name,
    a.appointment_date,
    doc.name AS doctor_name,
    t.treatment_type,
    t.cost
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors doc ON a.doctor_id = doc.doctor_id
LEFT JOIN Treatments t ON a.appointment_id = t.appointment_id
ORDER BY p.name, a.appointment_date;

-- 8. Top 3 Patients by Total Spending
SELECT 
    p.name AS patient_name,
    SUM(t.cost) AS total_spent
FROM Treatments t
JOIN Appointments a ON t.appointment_id = a.appointment_id
JOIN Patients p ON a.patient_id = p.patient_id
GROUP BY p.patient_id
ORDER BY total_spent DESC
LIMIT 3;

-- 9. Doctor Salary Report by Department
SELECT 
    d.department_name,
    AVG(doc.salary) AS avg_salary,
    MAX(doc.salary) AS highest_salary,
    MIN(doc.salary) AS lowest_salary
FROM Doctors doc
JOIN Departments d ON doc.department_id = d.department_id
GROUP BY d.department_name;

-- 10. Frequent Visitors (2+ appointments)
SELECT 
    p.name,
    COUNT(a.appointment_id) AS visits
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
GROUP BY p.patient_id
HAVING visits >= 2
ORDER BY visits DESC;
