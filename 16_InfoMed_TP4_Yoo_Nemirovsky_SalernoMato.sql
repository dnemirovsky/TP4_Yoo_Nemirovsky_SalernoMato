WITH ultima_consulta AS (
    SELECT id_paciente, MAX(fecha) AS ultima_fecha
    FROM consultas
    GROUP BY id_paciente
)
SELECT p.nombre, c.diagnostico, c.fecha AS ultima_fecha
FROM pacientes p
INNER JOIN ultima_consulta u ON u.id_paciente = p.id_paciente
INNER JOIN consultas c ON c.id_paciente = u.id_paciente AND c.fecha = u.ultima_fecha;
