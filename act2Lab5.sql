/*Ejercicio No. 1:¿Cuántos ríos fluyen a través de cada país que tiene más de 15 ríos?*/

Select country, number_of_rivers FROM (SELECT Country, COUNT (*) AS number_of_rivers FROM geo_River GROUP BY Country) 
AS rivers_per_country 
WHERE number_of_rivers > 15;



/*Ejercicio No. 2. Obtenga el nombre de los países que pertenecen o son miembros de la UNESCO o de UNASUR.*/

SELECT name FROM Country NATURAL JOIN (SELECT Country AS Code FROM isMember 
WHERE (Organization = 'UNESCO' OR Organization = 'UNASUR') ) AS countriesCodes;


/*Ejercicio No. 3: ¿Cuál es el nombre, población y altitud de cada 
ciudad en Colombia (según lo registrado en la base de datos)? 
Los resultados deben estar ordenados de manera descendente por población.
*/

SELECT Name, Population, Elevation FROM City WHERE Country = 'CO' ORDER BY Population DESC; 


/*Ejercicio No. 4: Obtenga los códigos de todos los países para los cuales (a) el PIB está compuesto 
al menos en un 70% por los sectores de Servicios e Industria juntos, o (b) la inflación es inferior al 2%.*/

SELECT Country AS country_code FROM Economy WHERE (COALESCE(Service,0) + COALESCE(Industry,0)) >= 70 
OR COALESCE(Inflation,0) < 2;



