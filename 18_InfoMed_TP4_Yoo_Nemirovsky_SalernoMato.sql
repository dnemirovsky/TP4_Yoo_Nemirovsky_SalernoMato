SELECT
    m.nombre AS nombre_medicamento,
    COUNT(r.id_receta) AS cantidad_recetas,
    me.nombre AS nombre_medico,
    p.nombre AS nombre_paciente
FROM recetas r
JOIN medicos me ON r.id_medico = me.id_medico
JOIN pacientes p ON r.id_paciente = p.id_paciente
JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
GROUP BY m.id_medicamento, m.nombre, me.id_medico, me.nombre, p.id_paciente, p.nombre
ORDER BY cantidad_recetas DESC;