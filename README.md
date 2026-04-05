# SQL-Security-Operations: Advanced Filtering & Relational Attribution
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
*“God is my Shield and my Strength.”*
[Download the full SQL Forensics Report (PDF)](./SQL_Forensics_Report_Jonny.pdf)

---
Advanced Relational Analysis (Asset Correlation)

* Shadow IT Detection: Leveraged LEFT JOIN operations to cross-reference hardware inventory against the employee database, identifying unauthorized or "orphan" devices. * Incident Attribution: Correlated the event table (log_in_attempts) with the identity table (employees) to map security alerts to specific users and roles. * SYSTEM LOBO Optimization: All queries were validated and stress-tested in a Kali Linux laboratory environment, ensuring efficient resource allocation and high-performance data retrieval
---
# Análisis Forense con SQL: Investigación de Anomalías y Registros de Acceso 🔍🛡️

## Descripción del Proyecto 
En este proyecto, asumo el rol de analista de seguridad encargado de investigar posibles incidentes mediante el análisis de registros de acceso y datos de empleados. El objetivo es aplicar lógica de filtrado avanzada en SQL para identificar vulnerabilidades y organizar información crítica para las actualizaciones de seguridad del sistema.

## Herramientas Utilizadas
* **Sistema de Gestión de Bases de Datos:** MariaDB / MySQL
* **Lenguaje:** SQL (Structured Query Language)
* **Operadores Clave:** AND, OR, NOT , LIKE, % (Comodín)

## Investigaciones de Seguridad Clave

### 1. Análisis de Intentos de Inicio de Sesión Fallidos 
Filtré los registros de acceso para identificar intentos fallidos (success = 0) ocurridos después de las **18:00** con el fin de detectar posibles patrones de fuerza bruta fuera del horario laboral.

### Investigación de Incidentes Específicos
Investigué un evento sospechoso ocurrido entre el **8 y el 9 de mayo de 2022**, utilizando el operador OR para recuperar registros de ambas fechas críticas.

###  Filtrado de Tráfico Geográfico
Para reducir el "ruido" en la investigación, excluí los intentos de inicio de sesión que no se originaron en México utilizando los operadores NOT y LIKE con el patrón 'MEX%'.

### 4. Gestión de Activos Organizacionales
* **Actualización en Marketing:** Identifiqué empleados en el **Edificio Este** para actualizaciones de seguridad dirigidas usando LIKE 'East%'.
* **Departamentos Prioritarios:** Segmenté a los equipos de **Finanzas** y **Ventas** para actualizaciones de sistema de alta prioridad.
* **Personal No Técnico:** Identifiqué a todos los empleados fuera del departamento de **Tecnología de la Información** para completar las fases finales de parches de seguridad

## [cite_start]Habilidades Técnicas Demostradas
* **Filtrado de Datos Avanzado:** Implementación de operadores lógicos complejos para aislar amenazas de seguridad.
* **Búsqueda de Patrones:** Uso experto del comodín % para la recuperación de datos flexible y precisa.
* **Fortalecimiento de la Ciberseguridad:** Extracción de información procesable para proteger los activos de información de la organización.

---
*“Dios es mi escudo y mi fortaleza”*
[Download the full SQL Report version Español (PDF)](./Sql-Analisis-Seguridad-filtrado-Amenazas-control-datos.pdf)
