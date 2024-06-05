-- Create the database
CREATE DATABASE architect_db;

-- Use the database
USE architect_db;

-- Create the first table with at least 4 fields
CREATE TABLE projects (
  project_id INT AUTO_INCREMENT PRIMARY KEY,
  project_name VARCHAR(50) NOT NULL,
  start_date DATE,
  end_date DATE,
  budget DECIMAL(10,2)
);

-- Populate the projects table with at least 3 rows of data
INSERT INTO projects (project_name, start_date, end_date, budget)
VALUES
  ('Office Building', '2022-01-01', '2023-06-30', 2500000.00),
  ('Residential Complex', '2021-05-15', '2022-12-31', 1800000.00),
  ('Retail Mall', '2023-03-01', '2024-09-30', 3200000.00);

-- Create the second table with at least 4 fields
CREATE TABLE architects (
  architect_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  experience_years INT
);

-- Populate the architects table with at least 3 rows of data
INSERT INTO architects (first_name, last_name, email, experience_years)
VALUES
  ('John', 'Doe', 'john.doe@example.com', 12),
  ('Jane', 'Smith', 'jane.smith@example.com', 8),
  ('Michael', 'Johnson', 'michael.johnson@example.com', 15);

-- Describe the structure of the projects table
DESCRIBE projects;

-- Describe the structure of the architects table
DESCRIBE architects;