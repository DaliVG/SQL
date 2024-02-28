-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX
select
    first_name,
    last_name,
    last_connection
from
    users
where
    last_connection like '221.%';

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas

Select first_name, last_name, population from city where population > 1000;