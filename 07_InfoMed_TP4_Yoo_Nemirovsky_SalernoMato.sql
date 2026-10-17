/*Previo a realizar esta query, 
corregimos el campo ciudad para agrupar las ciudades de manera correcta.
Caso contrario, aparecían agrupaciones de ciudades dos veces.
*/


SELECT
    p.ciudad,
    sb.descripcion AS sexo,
    COUNT(p.id_paciente) AS cantidad
FROM pacientes p
INNER JOIN sexobiologico sb ON sb.id_sexo = p.id_sexo
GROUP BY p.ciudad, sb.id_sexo, sb.descripcion
ORDER BY p.ciudad, sb.descripcion;
