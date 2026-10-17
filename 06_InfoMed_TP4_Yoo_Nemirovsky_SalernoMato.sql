-- Antes de actualizar, revisamos que ‘ciudades’ diferentes existen:
SELECT DISTINCT ciudad FROM pacientes ORDER BY ciudad; 

-- Y ahora actualizamos para normalizar los nombres: 
UPDATE pacientes
SET ciudad= 'Buenos Aires'
WHERE ciudad ILIKE '%B%A___s%';

UPDATE pacientes
SET ciudad ='Rosario'
WHERE ciudad ILIKE '%rosario%';

UPDATE pacientes
SET ciudad ='Córdoba'
WHERE ciudad ILIKE '%C_r___a%';

UPDATE pacientes
SET ciudad ='Mendoza'
WHERE ciudad ILIKE '%Me____a%';
