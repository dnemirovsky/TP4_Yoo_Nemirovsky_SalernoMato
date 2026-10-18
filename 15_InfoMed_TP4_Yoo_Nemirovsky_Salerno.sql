SELECT m.nombre, COUNT(r.id_medicamento) as cantidad_recetas
FROM medicamentos m
INNER JOIN recetas r ON r.id_medicamento=m.id_medicamento
GROUP BY m.nombre, m.id_medicamento
ORDER BY cantidad_recetas desc
LIMIT 2;
