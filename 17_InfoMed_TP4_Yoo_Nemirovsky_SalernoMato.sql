SELECT m.nombre as nombre_medico,p.nombre as nombre_paciente,count(c.id_paciente) as cantidad_consultas
FROM pacientes p
JOIN consultas c ON c.id_paciente=p.id_paciente
JOIN medicos m ON m.id_medico=c.id_medico
GROUP BY m.id_medico, p.id_paciente, m.nombre, p.nombre
ORDER BY m.nombre, p.nombre;