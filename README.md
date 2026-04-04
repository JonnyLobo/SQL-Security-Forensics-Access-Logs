# SQL-Security-Forensics-Access-Logs
QL investigation of security incidents, filtering failed logins, and managing organizational assets through advanced queries.

# SQL Forensics: Investigating Security Anomalies & Access Logs 🔍🛡️

## Project Description
In this project, I used SQL queries to investigate potential security incidents by analyzing access logs and employee data. My objective was to identify suspicious activities, such as failed login attempts outside business hours, and to organize employee information for critical security patches.

## Tools Used
* **Database Management System:** MariaDB / MySQL
* **Language:** SQL (Structured Query Language)
* **Key Operators:** AND, OR, NOT, LIKE

## Key Security Investigations

### 1. After-Hours Failed Login Analysis
Identified potential brute-force or unauthorized access attempts by filtering for failed logins (success = 0) that occurred after **18:00**.

### 2. Targeted Incident Investigation
Retrieved all login activity for specific dates (**2022-05-08** and **2022-05-09**) to investigate a known suspicious event using the OR operator.

### 3. Geographical Traffic Filtering
Isolated non-domestic activity by excluding all traffic originating from Mexico using the NOT and LIKE operators with pattern matching (MEX%).

### 4. Asset Management & Security Updates
* **Marketing Department:** Located all devices in the **East Building** for targeted patching.
* **Finance & Sales:** Segmented high-priority departments for mandatory security upgrades.
* **General Staff:** Identified all employees outside the **IT Department** to complete the final phase of organizational security updates.

## Technical Skills Demonstrated
* **Advanced Data Filtering:** Expert use of logical operators to isolate security threats.
* **Pattern Matching:** Implementing LIKE with wildcards (%) for flexible data retrieval.
* **Data Integrity & Compliance:** Extracting actionable insights to strengthen the organization's security posture.

---
*“Dios es mi escudo y mi fortaleza”*
[Download the full SQL Forensics Report (PDF)](./SQL_Forensics_Report_Jonny.pdf)
