-- ==========================================================
-- PROYECTO: Análisis Forense de Activos y Atribución de Identidad
-- ANALISTA: Jonny (SYSTEM LOBO)
-- ENTORNO: Kali Linux / MariaDB / SQLite3
-- DESCRIPCIÓN: Correlación de tablas para detección de Shadow IT
--              y atribución de eventos de seguridad.
-- ==========================================================

-- 1. CONFIGURACIÓN DEL ESCENARIO DE PRUEBA
CREATE TABLE empleados (
    id_emp INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    rol TEXT NOT NULL,
    departamento TEXT
);

CREATE TABLE maquinas (
    id_pc TEXT PRIMARY KEY,
    so TEXT NOT NULL,
    id_owner INTEGER,
    ultima_actualizacion DATE
);

-- 2. POBLAMIENTO DE DATOS (DATA SEEDING)
INSERT INTO empleados (id_emp, nombre, rol, departamento) VALUES 
(101, 'Jonny', 'Analista Senior', 'Ciberseguridad'),
(102, 'Lobo_Alpha', 'Pentester', 'Red Team'),
(103, 'User_Temporal', 'Invitado', 'Ventas'),
(104, 'Admin_Root', 'SysAdmin', 'TI');

INSERT INTO maquinas (id_pc, so, id_owner, ultima_actualizacion) VALUES 
('PC-SQL-01', 'Kali Linux', 101, '2026-03-20'),
('PC-WIN-02', 'Windows 11', 102, '2026-03-21'),
('PC-ROGUE-99', 'Arch Linux', 999, '2026-04-01');

-- 3. MISIONES DE INVESTIGACIÓN (JOINS)

-- MISIÓN A: REPORTE DE CUMPLIMIENTO (INNER JOIN)
SELECT e.nombre, m.id_pc, m.so
FROM empleados AS e
INNER JOIN maquinas AS m ON e.id_emp = m.id_owner;

-- MISIÓN B: DETECCIÓN DE SHADOW IT (LEFT JOIN)
SELECT m.id_pc, m.so, e.nombre AS dueño_registrado
FROM maquinas AS m
LEFT JOIN empleados AS e ON m.id_owner = e.id_emp
WHERE e.nombre IS NULL;

-- MISIÓN C: AUDITORÍA DE CUENTAS HUÉRFANAS (RIGHT JOIN / INVERTED LEFT)
SELECT e.nombre, e.rol, m.id_pc
FROM empleados AS e
LEFT JOIN maquinas AS m ON e.id_emp = m.id_owner
WHERE m.id_pc IS NULL;
