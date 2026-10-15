SELECT
    m.nombre AS nombre_medico,
    p.nombre AS nombre_paciente,
    COUNT(c.id_consulta) AS cantidad_consultas,
    CASE
        WHEN m.especialidad_id = 1 THEN 'TRUE'
        ELSE 'FALSE'
    END AS es_pediatra
FROM medicos m
JOIN consultas c ON c.id_medico = m.id_medico
JOIN pacientes p ON p.id_paciente = c.id_paciente
WHERE p.edad < 18
GROUP BY m.nombre, p.nombre, m.especialidad_id;