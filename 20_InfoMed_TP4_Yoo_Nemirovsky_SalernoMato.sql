SELECT
    m.nombre AS nombre_medico,
    COUNT(v.id_paciente) AS cantidad_consultas_menores,
    CASE
        WHEN m.especialidad_id = 1 THEN TRUE
        ELSE FALSE
    END AS es_pediatra
FROM medicos m
LEFT JOIN consultas c ON c.id_medico = m.id_medico
LEFT JOIN vista_pacientes_con_edad v ON v.id_paciente = c.id_paciente
                                    AND v.edad < 18
GROUP BY m.id_medico, m.nombre, m.especialidad_id;
