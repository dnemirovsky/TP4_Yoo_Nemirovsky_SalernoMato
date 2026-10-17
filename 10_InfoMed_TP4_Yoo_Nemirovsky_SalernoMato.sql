SELECT p.nombre, c.diagnostico, c.fecha
FROM pacientes p
INNER JOIN consultas c ON p.id_paciente=c.id_paciente
WHERE EXTRACT(MONTH FROM c.fecha)=8 AND EXTRACT(YEAR FROM c.fecha)=2024;