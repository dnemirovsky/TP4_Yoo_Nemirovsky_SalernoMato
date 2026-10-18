SELECT nombre_paciente, edad
FROM vista_pacientes_con_edad
WHERE edad > (SELECT AVG(EDAD) FROM vista_pacientes_con_edad)
ORDER BY edad desc;
