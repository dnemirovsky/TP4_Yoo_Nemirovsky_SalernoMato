CREATE VIEW vista_pacientes_con_edad AS
SELECT
    p.id_paciente,
    p.nombre AS nombre_paciente,
    p.fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento))::INT AS edad,
    sb.descripcion AS sexo,
    p.calle,
    p.numero,
    p.ciudad
FROM Pacientes p
LEFT JOIN SexoBiologico sb ON p.id_sexo = sb.id_sexo;
