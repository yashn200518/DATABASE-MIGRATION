
-- PostgreSQL-compatible SQL Dump for 'codtech' database

-- Table: it_sector
DROP TABLE IF EXISTS it_sector;
CREATE TABLE it_sector (
  Sector_ID INT PRIMARY KEY,
  Sector_Name VARCHAR(50),
  Head_Office VARCHAR(50)
);

INSERT INTO it_sector (Sector_ID, Sector_Name, Head_Office) VALUES
(1, 'Software Development', 'Bengaluru'),
(2, 'Cybersecurity', 'Hyderabad'),
(3, 'Data Analytics', 'Pune'),
(4, 'AI & Machine Learning', 'Bengaluru'),
(5, 'Cloud Computing', 'Mumbai'),
(6, 'IT Consulting', 'Delhi'),
(7, 'Web Development', 'Chennai'),
(8, 'DevOps', 'Noida'),
(9, 'Database Administration', 'Kolkata'),
(10, 'Networking', 'Gurgaon'),
(11, 'Blockchain', 'Bengaluru'),
(12, 'IoT Solutions', 'Ahmedabad'),
(13, 'AR/VR', 'Hyderabad'),
(14, 'UI/UX Design', 'Chennai'),
(15, 'Mobile Development', 'Pune'),
(16, 'Game Development', 'Mumbai'),
(17, 'IT Support', 'Nagpur'),
(18, 'ERP Solutions', 'Indore'),
(19, 'Digital Marketing', 'Kolkata'),
(20, 'QA & Testing', 'Jaipur');

-- Table: sector_projects
DROP TABLE IF EXISTS sector_projects;
CREATE TABLE sector_projects (
  Project_ID INT PRIMARY KEY,
  Sector_ID INT REFERENCES it_sector(Sector_ID),
  Project_Name VARCHAR(100),
  Status VARCHAR(20)
);

INSERT INTO sector_projects (Project_ID, Sector_ID, Project_Name, Status) VALUES
(101, 1, 'Payroll Management System', 'Completed'),
(102, 2, 'Advanced Threat Monitor', 'Ongoing'),
(103, 3, 'Customer Behavior Analytics', 'Completed'),
(104, 4, 'Chatbot for Banking', 'Ongoing'),
(105, 5, 'Hybrid Cloud Architecture', 'Completed'),
(106, 6, 'Tech Strategy Audit', 'Pending'),
(107, 7, 'Online Grocery Platform', 'Completed'),
(108, 8, 'Kubernetes Setup', 'Ongoing'),
(109, 9, 'Real-time DB Sync', 'Completed'),
(110, 10, 'Enterprise Network Overhaul', 'Completed'),
(111, 11, 'Crypto Wallet App', 'Ongoing'),
(112, 12, 'Smart Factory Sensors', 'Completed'),
(113, 13, 'VR Training Simulator', 'Pending'),
(114, 14, 'UI Revamp for App', 'Completed'),
(115, 15, 'Cross-platform Travel App', 'Ongoing'),
(116, 16, '3D Game Engine', 'Completed'),
(117, 17, 'Remote Desktop Manager', 'Completed'),
(118, 18, 'SAP Integration Project', 'Ongoing'),
(119, 19, 'SEO Optimization Suite', 'Pending'),
(120, 20, 'Test Automation Suite', 'Completed');
