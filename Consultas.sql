SELECT * From empleados_test;

SELECT * FROM empleado_test
WHERE edad BETWEEN 25 and 35;

SELECT * FROM empleados_test
WHERE departamento IN ('IT', 'Ventas');

SELECT * FROM empleados_test
WHERE nombre LIKE '%ez%';

SELECT * FROM empleados_test
WHERE ciudad IS NULL; 

SELECT * FROM empleados_test
WHERE salario > 40000
ORDER BY salario DESC;

SELECT count(*)  AS total_empleados 
FROM empleados_test;

SELECT sum(salario) AS suma_salario 
FROM empleados_test;

SELECT AVG(evaluacion) AS promedio_evaluación FROM empleados_test;

SELECT max(salario) AS salario_maximo, min(salario) AS salario_minimo FROM empleados_test;

SELECT round(avg(bono), 1) AS promedio_bono_redondeado FROM empleados_test;

SELECT departamento, AVG(salario) AS promedio_salario
FROM empleados_test
GROUP BY departamento;

SELECT ciudad, count(*) AS total_empleado
FROM empleados_test
GROUP BY departamento;

SELECT ciudad, count(*) AS total_empleados
FROM empleados_test
GROUP BY departamento;

SELECT departamento, sum(bono) AS total_bonos
FROM empleados_test
GROUP BY departamento
HAVING total_bonos > 7000;

SELECT estado, count(*) AS total
FROM empleados_test
WHERE estado = 'Activo'
GROUP BY estado;