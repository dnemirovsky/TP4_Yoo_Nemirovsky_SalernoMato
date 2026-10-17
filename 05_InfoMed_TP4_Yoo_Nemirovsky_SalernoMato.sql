SELECT nombre, calle, número, ciudad
FROM pacientes
WHERE ciudad ILIKE '%buenos aires%'
   OR ciudad ILIKE '%bs%aires%';
