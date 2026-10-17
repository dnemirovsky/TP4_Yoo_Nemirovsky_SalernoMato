SELECT m.nombre, count(DISTINCT c.id_paciente) as cantidad_pacientes
FROM medicos m
LEFT JOIN consultas c ON c.id_medico=m.id_medico
GROUP BY  m.id_medico, m.nombre
ORDER BY cantidad_pacientes desc;