SELECT m.nombre, COUNT(r.id_receta) AS cantidad_recetas
FROM medicos m
LEFT JOIN recetas r ON r.id_medico = m.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY cantidad_recetas DESC;