SELECT p.nombre, c.diagnostico, MAX(c.fecha) AS ultima_fecha
FROM pacientes p
JOIN consultas c ON c.id_paciente = p.id_paciente
GROUP BY p.id_paciente, p.nombre, c.diagnostico;