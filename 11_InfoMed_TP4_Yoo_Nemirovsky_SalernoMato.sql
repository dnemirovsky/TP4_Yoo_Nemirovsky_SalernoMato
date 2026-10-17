SELECT m.nombre, COUNT(r.id_medicamento) AS VECES_PRESCRIPTAS
FROM medicamentos m
INNER JOIN recetas r ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico=2
GROUP BY m.id_medicamento, m.nombre
HAVING COUNT(r.id_medicamento) > 1;