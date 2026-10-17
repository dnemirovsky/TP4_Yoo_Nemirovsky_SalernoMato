WITH total_por_medicamento AS (
    SELECT id_medicamento, COUNT(*) AS total_recetas
    FROM recetas
    GROUP BY id_medicamento
)
SELECT m.nombre AS nombre_medicamento,
       t.total_recetas,
       me.nombre AS nombre_medico,
       p.nombre AS nombre_paciente
FROM medicamentos m
INNER JOIN total_por_medicamento t ON t.id_medicamento = m.id_medicamento
INNER JOIN recetas r  ON r.id_medicamento = m.id_medicamento
INNER JOIN medicos me ON me.id_medico = r.id_medico
INNER JOIN pacientes p ON p.id_paciente = r.id_paciente
ORDER BY t.total_recetas DESC, m.nombre;