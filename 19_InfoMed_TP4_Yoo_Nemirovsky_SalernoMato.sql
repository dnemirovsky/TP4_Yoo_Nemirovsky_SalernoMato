SELECT m.nombre, count(c.id_paciente) as cantidad_pacientes
FROM medicos m
JOIN consultas c ON c.id_medico=m.id_medico
GROUP BY m.nombre
ORDER BY cantidad_pacientes des;