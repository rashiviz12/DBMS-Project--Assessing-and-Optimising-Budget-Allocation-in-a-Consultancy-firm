use dbms_proj1;
CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(25),
    Email VARCHAR(255)
);

INSERT INTO Client (ClientID, Name, Email) VALUES
(1, 'GreenLeaf Tech', 'contact@greenleaftech.com'),
(2, 'Quantum Motors', 'support@quantummotors.com'),
(3, 'Skyline Constructions', 'info@skylineconstructions.com'),
(4, 'Everest Foods', 'sales@everestfoods.com'),
(5, 'Solaris Energy', 'hello@solarisenergy.com'),
(6, 'Vertex Robotics', 'team@vertexrobotics.com'),
(7, 'Blue Ocean Shipping', 'office@blueoceanshipping.com'),
(8, 'Summit Apparel', 'customer@summitapparel.com'),
(9, 'NextGen Pharmaceuticals', 'research@nextgenpharma.com'),
(10, 'Nimbus Aerospace', 'business@nimbusaerospace.com'),
(11, 'Titan Manufacturing', 'admin@titanmanufacturing.com'),
(12, 'Horizon Financial Services', 'clients@horizonfinancial.com'),
(13, 'Pioneer Media Group', 'press@pioneermedia.com'),
(14, 'Evolve Electronics', 'service@evolveelectronics.com'),
(15, 'FutureWave Retail', 'contact@futurewaveretail.com'); 

ALTER TABLE Client DROP COLUMN ContactNumber;

CREATE TABLE ClientContact (
    ContactID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    ContactNumber VARCHAR(15),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

INSERT INTO ClientContact (ClientID, ContactNumber) VALUES
(1, '123-456-7890'),
(2, '987-654-3210'),
(3, '456-789-0123'),
(3, '456-789-0456'),  -- Multi-valued phone number is now separate rows
(4, '789-012-3456'),
(5, '321-654-9870'),
(5, '321-654-9000'),  -- Multi-valued phone number is now separate rows
(6, '654-987-1230'),
(7, '159-753-4862'),
(7, '159-753-4000'),  -- Multi-valued phone number is now separate rows
(8, '951-357-8524'),
(9, '753-951-2586'),
(10, '852-456-1597'),
(11, '654-321-9870'),
(12, '321-987-6540'),
(13, '456-123-7890'),
(14, '789-654-1230'),
(15, '951-753-8520'),
(15, '951-753-8999');  -- Multi-valued phone number is now separate rows

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT
   );

INSERT INTO Department (DepartmentID, Name, Description) VALUES
(101, 'Finance', 'Handles financial planning and investments'),
(102, 'Marketing', 'Develops advertising strategies and promotions'),
(103, 'Operations', 'Oversees day-to-day company operations'),
(104, 'Technology', 'Manages IT infrastructure and innovations'),
(105,'Human Resources', 'Handles employee recruitment and relations'),
(106, 'Research & Development', 'Focuses on new product innovations'),
(107, 'Legal', 'Manages legal affairs and compliance'),
(108, 'Product Management', 'Supervises product development and lifecycle'),
(109, 'Customer Service', 'Manages client relations and support'),
(110, 'Business Development', 'Identifies growth opportunities and partnerships'),
(111, 'Sustainability', 'Drives eco-friendly initiatives and compliance');


CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    JobTitle VARCHAR(255),
    Salary DECIMAL(10,2),
    BonusEligibility VARCHAR(10), 
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Employee (EmployeeID, Name, JobTitle, Salary, BonusEligibility, DepartmentID) VALUES
(201, 'Aarav Sharma', 'Senior Analyst', 75000, 'Yes', 101),
(202, 'Vihaan Mehta', 'Analyst', 72000, 'No', 101),
(203, 'Ishaan Gupta', 'Consultant', 68000, 'Yes', 102),
(204, 'Anaya Kapoor', 'Senior Consultant', 71000, 'Yes', 102),
(205, 'Kavya Joshi', 'Project Manager', 88000, 'Yes', 103),
(206, 'Riya Nair', 'Business Analyst', 73000, 'No', 103),
(207, 'Aditi Rao', 'Finance Associate', 69000, 'Yes', 104),
(208, 'Aarohi Bose', 'Strategy Consultant', 72000, 'No', 104),
(209, 'Dev Malhotra', 'Senior Consultant', 76000, 'Yes', 105),
(210, 'Rohan Verma', 'Operations Manager', 94000, 'Yes', 105),
(211, 'Aryan Khan', 'Junior Analyst', 65000, 'No', 106),
(212, 'Meera Iyer', 'Risk Analyst', 71000, 'Yes', 106),
(213, 'Tanish Saxena', 'Investment Banker', 120000, 'Yes', 107),
(214, 'Neha Mishra', 'Equity Research Analyst', 77000, 'No', 107),
(215, 'Siddharth Patel', 'IT Manager', 95000, 'Yes', 108),
(216, 'Simran Desai', 'Cybersecurity Specialist', 88000, 'Yes', 108),
(217, 'Rahul Chopra', 'Data Scientist', 98000, 'No', 109),
(218, 'Krishna Ahuja', 'Machine Learning Engineer', 105000, 'Yes', 109),
(219, 'Pooja Reddy', 'Marketing Coordinator', 69000, 'No', 110),
(220, 'Sneha Bajaj', 'Digital Marketing Manager', 71000, 'Yes', 110),
(221, 'Nikhil Trivedi', 'HR Manager', 83000, 'Yes', 101),
(222, 'Ira Bansal', 'Recruitment Specialist', 73000, 'No', 102),
(223, 'Kabir Chawla', 'Talent Acquisition Lead', 74000, 'No', 103),
(224, 'Tara Menon', 'Legal Counsel', 86000, 'Yes', 104),
(225, 'Raghav Joshi', 'Corporate Lawyer', 89000, 'Yes', 105),
(226, 'Saanvi Kapoor', 'Compliance Officer', 82000, 'No', 106),
(227, 'Mihir Verma', 'Tax Consultant', 87000, 'Yes', 107),
(228, 'Arjun Shetty', 'Senior Accountant', 78000, 'Yes', 108),
(229, 'Ishika Malhotra', 'Auditor', 79000, 'No', 109),
(230, 'Kunal Desai', 'Budget Analyst', 76000, 'No', 110),
(231, 'Divya Pandey', 'Procurement Specialist', 81000, 'Yes', 101),
(232, 'Zara Khan', 'Supply Chain Manager', 92000, 'Yes', 102),
(233, 'Vivek Tiwari', 'Logistics Coordinator', 72000, 'No', 103),
(234, 'Ritu Mehra', 'Product Manager', 110000, 'Yes', 104),
(235, 'Harsh Agrawal', 'Operations Research Analyst', 97000, 'Yes', 105),
(236, 'Navya Reddy', 'Public Relations Manager', 88000, 'No', 106),
(237, 'Yash Chauhan', 'Customer Relations Executive', 70000, 'No', 107),
(238, 'Swati Singh', 'Brand Manager', 90000, 'Yes', 108),
(239, 'Jayant Vyas', 'UX Designer', 85000, 'Yes', 109),
(240, 'Kritika Kapoor', 'Content Strategist', 78000, 'No', 110);

CREATE TABLE Budget (
    BudgetID INT,
    ObjectiveID INT,
    Amount DECIMAL(12,2) NOT NULL,
    TimePeriodStart DATE NOT NULL,
    TimePeriodEnd DATE NOT NULL,
    Description TEXT NOT NULL,
    Status ENUM('Proposed', 'Approved', 'Active', 'Completed', 'Rejected') NOT NULL,
    PRIMARY KEY (BudgetID, ObjectiveID),
    FOREIGN KEY (ObjectiveID) REFERENCES StrategicObjective(ObjectiveID)
);

INSERT INTO Budget (BudgetID, ObjectiveID, Amount, TimePeriodStart, TimePeriodEnd, Description, Status) VALUES
(301, 601, 500000, '2025-01-01', '2025-06-30', 'Quarterly budget for financial planning', 'Approved'),  
(301, 610, 500000, '2025-01-01', '2025-06-30', 'Quarterly budget for financial planning', 'Approved'),  
(302, 602, 350000, '2025-01-01', '2025-06-30', 'Marketing and advertising campaigns', 'Approved'),  
(302, 609, 350000, '2025-01-01', '2025-06-30', 'Marketing and advertising campaigns', 'Approved'),  
(303, 603, 600000, '2025-01-01', '2025-06-30', 'Operational expenses and logistics', 'Active'),  
(304, 604, 450000, '2025-01-01', '2025-06-30', 'IT infrastructure upgrades', 'Proposed'),  
(305, 605, 400000, '2025-01-01', '2025-06-30', 'Employee training and development', 'Approved'),  
(306, 606, 750000, '2025-01-01', '2025-06-30', 'Research and development funding', 'Active'),  
(307, 607, 900000, '2025-01-01', '2025-06-30', 'Legal compliance and risk management', 'Completed'),  
(308, 608, 550000, '2025-01-01', '2025-06-30', 'Supplier and vendor contracts', 'Approved'),  
(309, 613, 800000, '2025-01-01', '2025-06-30', 'Product development initiatives', 'Active'),  
(310, 614, 300000, '2025-01-01', '2025-06-30', 'Quality control testing', 'Proposed'),  
(311, 612, 620000, '2025-01-01', '2025-06-30', 'Customer service enhancements', 'Approved'),  
(312, 609, 380000, '2025-01-01', '2025-06-30', 'Public relations and outreach', 'Completed'),  
(313, 602, 700000, '2025-01-01', '2025-06-30', 'Business expansion and partnerships', 'Active'),  
(314, 615, 950000, '2025-01-01', '2025-06-30', 'Manufacturing process improvements', 'Approved'),  
(315, 611, 500000, '2025-01-01', '2025-06-30', 'Sustainability projects', 'Proposed');

CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ClientID INT NOT NULL,
    DepartmentID INT NOT NULL,
    EmployeeID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Status ENUM('Proposed', 'Approved', 'Active', 'Completed', 'Cancelled') NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Project (ProjectID, Name, Description, StartDate, EndDate, Status, ClientID, DepartmentID, EmployeeID) VALUES
(501, 'Financial Health Analysis', 'Assessing the financial position and risk factors', '2025-02-01', '2025-07-31', 'Active', 1, 101, 201),
(502, 'Market Expansion Strategy', 'Developing a structured approach for entering new markets', '2025-03-01', '2025-09-30', 'Proposed', 2, 102, 202),
(503, 'Supply Chain Optimization', 'Reducing costs and improving logistics efficiency', '2025-01-15', '2025-06-15', 'Approved', 3, 103, 203),
(504, 'IT Infrastructure Upgrade', 'Enhancing the client’s IT systems for better performance', '2025-04-01', '2025-10-01', 'Active', 4, 104, 204),
(505, 'HR Policy Review', 'Ensuring compliance and employee satisfaction improvements', '2025-05-01', '2025-11-01', 'Completed', 5, 105, 205),
(506, 'Product Development Strategy', 'Guiding the innovation process for new product launches', '2025-02-15', '2025-08-15', 'Active', 6, 106, 206),
(507, 'Legal Risk Mitigation', 'Identifying and minimizing legal risks for operations', '2025-03-10', '2025-09-10', 'Approved', 7, 107, 207),
(508, 'Customer Experience Enhancement', 'Improving client interaction and service strategies', '2025-02-20', '2025-07-20', 'Completed', 8, 108, 208),
(509, 'Brand Identity & Positioning', 'Redefining brand strategy for stronger market presence', '2025-03-05', '2025-09-05', 'Proposed', 9, 109, 209),
(510, 'Growth & Revenue Acceleration', 'Developing business strategies for revenue increase', '2025-01-25', '2025-06-25', 'Approved', 10, 110, 210),
(511, 'Sustainability & ESG Compliance', 'Helping businesses implement sustainable practices', '2025-04-15', '2025-10-15', 'Active', 11, 111, 211),
(512, 'Crisis Management Plan', 'Designing response strategies for business disruptions', '2025-05-10', '2025-11-10', 'Approved', 12, 107, 212), 
(513, 'Partnership & Alliance Advisory', 'Identifying strategic partners for business growth', '2025-02-28', '2025-08-28', 'Completed', 13, 110, 213),
(514, 'Compliance & Regulatory Audit', 'Ensuring adherence to industry and government regulations', '2025-01-10', '2025-06-10', 'Active', 14, 107, 214),
(515, 'Mergers & Acquisitions Consulting', 'Advising on business mergers, acquisitions, and due diligence', '2025-03-20', '2025-09-20', 'Approved', 15, 101, 215);

CREATE TABLE Expense (
    ExpenseID INT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    ProjectID INT NOT NULL,
    Date DATE NOT NULL,
    Amount DECIMAL(12,2) NOT NULL,
    Category VARCHAR(255),
    Description TEXT,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

INSERT INTO Expense (ExpenseID, Amount, Date, Category, Description, PaymentMethod, ProjectID, DepartmentID) VALUES
(401, 75000, '2025-02-15', 'Consulting', 'Initial financial analysis and risk assessment', 'Bank Transfer', 501, 101),
(402, 50000, '2025-04-01', 'Market Research', 'Market research and expansion planning', 'Credit Card', 502, 102),
(403, 62000, '2025-03-10', 'Logistics', 'Logistics optimization and cost reduction', 'Bank Transfer', 503, 103),
(404, 88000, '2025-05-05', 'Software', 'Upgrading IT infrastructure', 'Wire Transfer', 504, 104),
(405, 46000, '2025-06-20', 'HR Services', 'HR policy review and employee engagement surveys', 'Credit Card', 505, 105),
(406, 98000, '2025-03-18', 'R&D', 'New product R&D and strategy development', 'Bank Transfer', 506, 106),
(407, 89000, '2025-04-12', 'Legal', 'Legal compliance audits and risk management', 'Wire Transfer', 507, 107),
(408, 55000, '2025-05-15', 'Customer Service', 'Customer feedback collection and strategy enhancement', 'Credit Card', 508, 108),
(409, 72000, '2025-06-08', 'Advertising', 'Brand repositioning and identity refinement', 'Bank Transfer', 509, 109),
(410, 81000, '2025-04-25', 'Business Development', 'Revenue acceleration and sales strategy workshops', 'Wire Transfer', 510, 110),
(411, 95000, '2025-05-10', 'Sustainability', 'Sustainability and ESG compliance initiatives', 'Credit Card', 511, 111),
(412, 68000, '2025-07-15', 'Crisis Management', 'Business continuity and crisis management training', 'Bank Transfer', 512, 107),
(413, 87000, '2025-03-28', 'Partnership Advisory', 'Strategic partnership and business alliance advisory', 'Wire Transfer', 513, 110),
(414, 78000, '2025-04-10', 'Regulatory Compliance', 'Regulatory compliance audits and risk mitigation', 'Credit Card', 514, 107),
(415, 102000, '2025-06-05', 'M&A Advisory', 'Mergers and acquisitions consulting services', 'Wire Transfer', 515, 101);



CREATE TABLE StrategicObjective (
    ObjectiveID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    TargetCompletionDate DATE
);

INSERT INTO StrategicObjective (ObjectiveID, Name, Description, TargetCompletionDate) VALUES  
(601, 'Financial Stability', 'Enhance financial resilience by optimizing cash flow and reducing risk exposure.', '2026-12-31'),  
(602, 'Market Expansion', 'Expand operations into new geographical regions and untapped markets.', '2026-06-30'),  
(603, 'Operational Efficiency', 'Improve supply chain management and reduce operational overhead.', '2025-12-31'),  
(604, 'Technological Advancement', 'Invest in IT infrastructure and cybersecurity measures for sustained innovation.', '2026-09-30'),  
(605, 'Employee Development', 'Enhance workforce skills through structured training and leadership programs.', '2025-11-30'),  
(606, 'Product Innovation', 'Accelerate research and development to introduce new high-quality products.', '2026-03-31'),  
(607, 'Regulatory Compliance', 'Ensure adherence to industry regulations and mitigate legal risks.', '2025-10-31'),  
(608, 'Customer Experience', 'Improve customer engagement strategies and satisfaction levels.', '2026-05-31'),  
(609, 'Brand Positioning', 'Strengthen brand presence through targeted marketing and rebranding efforts.', '2025-08-31'),  
(610, 'Revenue Growth', 'Increase profitability through strategic partnerships and sales acceleration.', '2026-07-31'),  
(611, 'Sustainability Leadership', 'Implement eco-friendly practices and achieve carbon neutrality targets.', '2027-01-01'),  
(612, 'Crisis Management', 'Develop and execute contingency plans to handle business disruptions effectively.', '2025-09-30'),  
(613, 'Business Expansion', 'Scale business operations through mergers, acquisitions, and partnerships.', '2026-12-15'),  
(614, 'Quality Assurance', 'Enhance product and service quality to meet global industry standards.', '2026-04-30'),  
(615, 'Digital Transformation', 'Leverage AI, data analytics, and automation for improved business processes.', '2027-06-30');  


 CREATE TABLE RevenueProjection (
    ProjectionID INT PRIMARY KEY,
    TimePeriodStart DATE NOT NULL,
    TimePeriodEnd DATE NOT NULL,
    ProjectedAmount DECIMAL(12,2) NOT NULL,
    Description TEXT
);

INSERT INTO RevenueProjection (ProjectionID, TimePeriodStart, TimePeriodEnd, ProjectedAmount, Description) VALUES  
(701, '2025-01-01', '2025-06-30', 5200000, 'Projected revenue considering steady sales and minor operational improvements.'),  
(702, '2025-07-01', '2025-12-31', 5500000, 'Expected increase in revenue due to marketing campaigns and cost optimizations.'),  
(703, '2026-01-01', '2026-06-30', 5900000, 'Revenue growth from product launches and customer experience improvements.'),  
(704, '2026-07-01', '2026-12-31', 6300000, 'Higher revenue anticipated from expanded business partnerships and improved logistics.'),  
(705, '2027-01-01', '2027-06-30', 6800000, 'Projected revenue growth driven by increased brand recognition and digital transformation.'),  
(706, '2027-07-01', '2027-12-31', 7200000, 'Stronger revenue due to business expansion into new geographic regions.'),  
(707, '2028-01-01', '2028-06-30', 7800000, 'Higher revenue expected from sustainability initiatives and market penetration strategies.'),  
(708, '2028-07-01', '2028-12-31', 8200000, 'Steady revenue growth from optimized operations and customer retention strategies.'),  
(709, '2029-01-01', '2029-06-30', 8700000, 'Increase in revenue due to higher demand for services and enhanced production capacity.'),  
(710, '2029-07-01', '2029-12-31', 9200000, 'Revenue target set based on economic conditions and successful execution of strategic objectives.');  


-- Junction Tables for Many-to-Many Relationships
CREATE TABLE DepartmentBudget (
    DepartmentID INT,
    BudgetID INT,
    AllocationAmount DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (DepartmentID, BudgetID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (BudgetID) REFERENCES Budget(BudgetID)
);

INSERT INTO DepartmentBudget (DepartmentID, BudgetID, AllocationAmount) VALUES
(101, 301, 120000),
(102, 302, 90000),
(103, 303, 150000),
(104, 304, 95000),
(105, 305, 80000),
(106, 306, 250000),
(107, 307, 180000),
(108, 308, 85000),
(109, 309, 175000),
(110, 310, 50000),
(111, 315, 120000);

CREATE TABLE ProjectBudget (
    ProjectID INT,
    BudgetID INT,
    AllocationAmount DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (ProjectID, BudgetID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    FOREIGN KEY (BudgetID) REFERENCES Budget(BudgetID)
);

INSERT INTO ProjectBudget (ProjectID, BudgetID, AllocationAmount) VALUES
(501, 301, 100000),
(502, 302, 75000),
(503, 303, 120000),
(504, 304, 95000),
(505, 305, 50000),
(506, 306, 200000),
(507, 307, 175000),
(508, 308, 80000),
(509, 309, 160000),
(510, 310, 45000),
(511, 311, 110000),
(512, 312, 90000),
(513, 313, 130000),
(514, 314, 210000),
(515, 315, 98000);


-- Trigger to ensure budget allocation does not exceed 60% of revenue projection
DELIMITER //
CREATE TRIGGER CheckBudgetAllocation
BEFORE INSERT ON DepartmentBudget
FOR EACH ROW
BEGIN
    DECLARE totalBudget DECIMAL(12,2);
    DECLARE projectedRevenue DECIMAL(12,2);

    SELECT SUM(AllocationAmount) INTO totalBudget 
    FROM DepartmentBudget 
    WHERE DepartmentID = NEW.DepartmentID;

    SELECT ProjectedAmount INTO projectedRevenue 
    FROM RevenueProjection 
    WHERE TimePeriodStart <= CURDATE() AND TimePeriodEnd >= CURDATE() 
    LIMIT 1;

    IF totalBudget + NEW.AllocationAmount > 0.6 * projectedRevenue THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Budget allocation exceeds 60% of revenue projection';
    END IF;
END;
//
DELIMITER ; 

DROP TABLE Budget;

CREATE TABLE Budget (
    BudgetID INT PRIMARY KEY,
    Amount DECIMAL(12,2) NOT NULL,
    TimePeriodStart DATE NOT NULL,
    TimePeriodEnd DATE NOT NULL,
    Description TEXT,
    Status ENUM('Proposed', 'Approved', 'Active', 'Completed', 'Rejected') NOT NULL
);

CREATE TABLE BudgetObjective (
    BudgetID INT,
    ObjectiveID INT,
    PRIMARY KEY (BudgetID, ObjectiveID),
    FOREIGN KEY (BudgetID) REFERENCES Budget(BudgetID),
    FOREIGN KEY (ObjectiveID) REFERENCES StrategicObjective(ObjectiveID)
);

INSERT INTO Budget (BudgetID, Amount, TimePeriodStart, TimePeriodEnd, Description, Status) VALUES 
(301, 500000, '2025-01-01', '2025-06-30', 'Quarterly budget for financial planning', 'Approved'), 
(302, 350000, '2025-01-01', '2025-06-30', 'Marketing and advertising campaigns', 'Approved'), 
(303, 600000, '2025-01-01', '2025-06-30', 'Operational expenses and logistics', 'Active'), 
(304, 450000, '2025-01-01', '2025-06-30', 'IT infrastructure upgrades', 'Proposed'), 
(305, 400000, '2025-01-01', '2025-06-30', 'Employee training and development', 'Approved'), 
(306, 750000, '2025-01-01', '2025-06-30', 'Research and development funding', 'Active'), 
(307, 900000, '2025-01-01', '2025-06-30', 'Legal compliance and risk management', 'Completed'), 
(308, 550000, '2025-01-01', '2025-06-30', 'Supplier and vendor contracts', 'Approved'), 
(309, 800000, '2025-01-01', '2025-06-30', 'Product development initiatives', 'Active'), 
(310, 300000, '2025-01-01', '2025-06-30', 'Quality control testing', 'Proposed'),
(311, 620000, '2025-01-01', '2025-06-30', 'Customer service enhancements', 'Approved'), 
(312, 380000, '2025-01-01', '2025-06-30', 'Public relations and outreach', 'Completed'), 
(313, 700000, '2025-01-01', '2025-06-30', 'Business expansion and partnerships', 'Active'), 
(314, 950000, '2025-01-01', '2025-06-30', 'Manufacturing process improvements', 'Approved'), 
(315, 500000, '2025-01-01', '2025-06-30', 'Sustainability projects', 'Proposed');

INSERT INTO BudgetObjective (BudgetID, ObjectiveID) VALUES
(301, 601),  -- Financial Stability  
(302, 609),  -- Brand Positioning  
(303, 603),  -- Operational Efficiency  
(304, 604),  -- Technological Advancement  
(305, 605),  -- Employee Development  
(306, 606),  -- Product Innovation  
(307, 607),  -- Regulatory Compliance  
(308, 608),  -- Customer Experience  
(309, 606),  -- Product Innovation  
(310, 614),  -- Quality Assurance  
(311, 608),  -- Customer Experience  
(312, 609),  -- Brand Positioning  
(313, 613),  -- Business Expansion  
(314, 614),  -- Quality Assurance  
(315, 611);  -- Sustainability Leadership 

SELECT CONSTRAINT_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE TABLE_NAME = 'Project' 
AND COLUMN_NAME = 'DepartmentID';

ALTER TABLE Project DROP FOREIGN KEY Project_ibfk_2;
ALTER TABLE Project DROP COLUMN DepartmentID; 

SELECT * FROM project; 
use dbms_proj1;

ALTER TABLE Budget ADD COLUMN LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
SELECT * FROM budget;
ALTER TABLE Client RENAME TO CorporateClient;
ALTER TABLE Budget DROP COLUMN Description;
SELECT * FROM Employee;
SELECT DISTINCT JobTitle FROM Employee;

UPDATE Employee  
SET Salary = Salary * 1.10  
WHERE DepartmentID = 105; 

UPDATE Budget  
SET Status = 'Completed'  
WHERE BudgetID = 305; 

SELECT * FROM Employee  
WHERE Salary > 50000;

SELECT * FROM Employee  
WHERE JobTitle LIKE '%Manager%';

SELECT * FROM Budget  
ORDER BY Amount DESC;

SELECT DepartmentID, COUNT(*) AS EmployeeCount  
FROM Employee  
GROUP BY DepartmentID; 

SELECT DepartmentID, COUNT(*) AS EmployeeCount  
FROM Employee  
GROUP BY DepartmentID  
HAVING EmployeeCount > 5;

SELECT Employee.Name, Department.Name AS Department  
FROM Employee  
JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

SELECT CorporateClient.Name AS ClientName, Project.Name AS ProjectName  
FROM CorporateClient  
LEFT JOIN Project ON CorporateClient.ClientID = Project.ClientID  
UNION  
SELECT CorporateClient.Name AS ClientName, Project.Name AS ProjectName  
FROM CorporateClient  
RIGHT JOIN Project ON CorporateClient.ClientID = Project.ClientID;

SELECT Name, Salary  
FROM Employee  
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

SELECT Name FROM CorporateClient  
WHERE ClientID IN (SELECT DISTINCT ClientID FROM Project);

SELECT Name FROM Department  
WHERE DepartmentID IN (SELECT DISTINCT DepartmentID FROM Budget WHERE Amount > 500000);

CREATE VIEW ActiveBudgets AS  
SELECT * FROM Budget WHERE Status = 'Active';

CREATE VIEW HighSalaryEmployees AS  
SELECT Name, Salary  
FROM Employee  
WHERE Salary > 70000;

CREATE VIEW ProjectBudgets AS  
SELECT Project.Name AS ProjectName, Budget.Amount AS BudgetAllocated  
FROM Project  
JOIN Budget ON Project.ProjectID = Budget.BudgetID;

CREATE VIEW DepartmentEmployeeCount AS  
SELECT Department.Name AS DepartmentName, COUNT(Employee.EmployeeID) AS EmployeeCount  
FROM Department  
LEFT JOIN Employee ON Department.DepartmentID = Employee.DepartmentID  
GROUP BY Department.DepartmentID;

CREATE VIEW ClientProjects AS  
SELECT CorporateClient.Name AS ClientName, Project.Name AS ProjectName  
FROM CorporateClient  
JOIN Project ON CorporateClient.ClientID = Project.ClientID; 

SELECT Name FROM Department  
UNION  
SELECT Name FROM StrategicObjective;

SELECT COUNT(*) AS TotalEmployees FROM Employee;
SELECT SUM(Amount) AS TotalBudget FROM Budget;
SELECT AVG(Salary) AS AverageSalary FROM Employee;
SELECT MAX(Amount) AS HighestBudget FROM Budget; 
SELECT MIN(Amount) AS LowestBudget FROM Budget;
SELECT Name, Salary  
FROM Employee  
WHERE Salary BETWEEN 50000 AND 80000;

SELECT Name  
FROM Employee  
WHERE DepartmentID IS NULL; 

SELECT DISTINCT JobTitle  
FROM Employee; 
SELECT DISTINCT Status  
FROM Budget;

SELECT Name, Salary  
FROM Employee  
ORDER BY Salary DESC  
LIMIT 5;
SELECT *  
FROM CorporateClient  
WHERE Email LIKE '%@greenleaftech.com'; 

SELECT *  
FROM Employee  
WHERE Name LIKE 'A%';

SELECT Name, Salary  
FROM Employee  
WHERE Salary IN (SELECT Salary FROM Employee GROUP BY Salary HAVING COUNT(Salary) > 1);