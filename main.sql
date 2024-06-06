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

-- Create the third table with at least 4 fields
CREATE TABLE clients (
  client_id INT AUTO_INCREMENT PRIMARY KEY,
  client_name VARCHAR(50) NOT NULL,
  contact_number VARCHAR(15),
  email VARCHAR(50) UNIQUE NOT NULL,
  address VARCHAR(100)
);

-- Populate the clients table with at least 3 rows of data
INSERT INTO clients (client_name, contact_number, email, address)
VALUES
  ('Global Corp', '123-456-7890', 'contact@globalcorp.com', '123 Global St, City, Country'),
  ('Home Builders Inc.', '234-567-8901', 'info@homebuilders.com', '456 Home St, City, Country'),
  ('Retail World', '345-678-9012', 'support@retailworld.com', '789 Retail St, City, Country');

-- Create the fourth table with at least 4 fields
CREATE TABLE project_assignments (
  assignment_id INT AUTO_INCREMENT PRIMARY KEY,
  project_id INT,
  architect_id INT,
  client_id INT,
  assignment_date DATE,
  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (architect_id) REFERENCES architects(architect_id),
  FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

-- Populate the project_assignments table with at least 3 rows of data
INSERT INTO project_assignments (project_id, architect_id, client_id, assignment_date)
VALUES
  (1, 1, 1, '2022-01-01'),
  (2, 2, 2, '2021-05-15'),
  (3, 3, 3, '2023-03-01');

-- Describe the structure of the projects table
DESCRIBE projects;

-- Describe the structure of the architects table
DESCRIBE architects;

-- Describe the structure of the clients table
DESCRIBE clients;

-- Describe the structure of the project_assignments table
DESCRIBE project_assignments;