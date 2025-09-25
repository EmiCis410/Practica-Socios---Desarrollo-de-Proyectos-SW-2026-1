use Socios

select * from socios
--ver los socios de las palmas de gran canari 
select n_socio, nombre, apellidos localidad from socios where localidad like 'las palmas de gran canari'

--ver los socios cuyo nombre empiece por 'J'
select n_socio, nombre, apellidos from socios where nombre like 'J%'

--ver los socios con apellido Blanco
select n_socio, nombre, apellidos from socios where Apellidos like '%Blanco%'

--Ordenar por localidad.
select n_socio, nombre, apellidos, localidad from socios where Apellidos like '%Blanco%' order by localidad

--6. Ver todos los socios que no son de Granada (provincia).
select n_socio, nombre, apellidos, localidad from socios where provincia not like 'Granada'

--7. Ver todos los socios que tengan un apellido Perez y que no sean de La Coruña.
select n_socio, nombre, apellidos, provincia from socios where apellidos like '%Perez%' and provincia not like 'La Coruña'

--8. Socios no federados nivel de juego medio.
select n_socio, nombre, apellidos from socios where Federado like 0 and nivel_juego like 'MEDIO'

--9. Socios de Ponferrada y Yanguas.
select n_socio, nombre, apellidos, localidad from socios where localidad in ('Ponferrada', 'Yanguas')

--10. Socios que no sean de la Provincia de Badajoz.
select n_socio, nombre, apellidos, provincia from socios where provincia not like 'Badajoz'

--11. Socios donde su cuota este entre 5 y 15 euros.
select n_socio, nombre, apellidos, cuota from socios where cuota between 5 and 15

--12. Los socios de nivel de juego medio ordenados ascendentemente por el apellido
select n_socio, nombre, apellidos from socios where Nivel_juego like 'MEDIO' order by Apellidos asc

--13. La fecha de alta de los socios que se llamen Fernando
select Nombre, Fecha_alta from socios where nombre like 'Fernando'

--14. Apellido y teléfono de los socios que se llamen Antonio o Santiago
select Nombre, Apellidos, Teléfono from socios where Nombre in ('Antonio', 'Santiago')

--15. N_Socio, Nombre, Apellidos de los socios de la población de Granada ordenadas descendentemente.
select N_socio, Nombre, Apellidos, Localidad from socios where Localidad like 'Granada' order by N_socio desc

--16. Muestra nombre dirección y teléfono de los socios cuyo número esté entre 992 y 994.
select Nombre, Dirección, Teléfono from socios where telefono between '992%' and '994%' order by telefono asc

--adicionales 
--Realiza una consulta adicional que muestre nombre, apellidos, y la edad para ello deberás de calcular la edad;
--menciona cual es el nombre y la edad del socio con mayor edad.
Select nombre, apellidos, fecha_nacimiento, (datediff(day,[fecha_nacimiento],getdate()))/(365) as 'edad' from socios order by edad desc
select top 1 nombre, (datediff(day,[fecha_nacimiento],getdate()))/(365) as 'edad' from socios order by edad desc --el socio mas viejo tiene 125 años

--Realiza una consulta adicional que muestre nombre, apellidos, y la edad para ello deberás de calcular la edad;
--menciona cual es el nombre y la edad del socio con mayor edad.
Select Nombre, Apellidos, Fecha_nacimiento, (DATEDIFF(YEAR, Fecha_nacimiento, GETDATE())) AS Edad FROM socios ORDER BY Edad DESC
select top 1 Nombre, Apellidos, (DATEDIFF(YEAR, Fecha_nacimiento, GETDATE())) AS Edad FROM socios ORDER BY Edad DESC