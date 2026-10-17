SELECT e.nombre, COUNT(m.id_medico) AS total_medicos
FROM especialidades e
INNER JOIN medicos m ON m.especialidad_id = e.id_especialidad
GROUP BY e.id_especialidad
HAVING COUNT(m.id_medico) > 2;