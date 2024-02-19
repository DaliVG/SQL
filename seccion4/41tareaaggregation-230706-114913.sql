
-- 1. Cuantos usuarios tenemos con cuentas @google.com
-- Tip: count, like

Select
    count(*),
    SUBSTRING(email, POSITION('@' in email)) as domain
from
    users
where
    SUBSTRING(email, POSITION('@' in email)) like '%@google.com'
group by
    SUBSTRING(email, POSITION('@' in email));
-- 2. De qué países son los usuarios con cuentas de @google.com
-- Tip: distinct
Select
    DISTINCT country,
    SUBSTRING(email, POSITION('@' in email)) as domain
from
    users
where
    SUBSTRING(email, POSITION('@' in email)) like '%@google.com'
group by
    SUBSTRING(email, POSITION('@' in email)),
    country;
-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by
Select
    count(*),
    country,
    SUBSTRING(email, POSITION('@' in email)) as domain
from
    users
where
    SUBSTRING(email, POSITION('@' in email)) like '%@google.com'
group by
    SUBSTRING(email, POSITION('@' in email)),
    country;

-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection
Select
    first_name,
    last_name,
    country,
    last_connection
from
    users
where
    country like 'Iceland';
-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX

Select
	count(*),
    first_name,
    last_name,
    country,
    last_connection
from
    users
where
    country like 'Iceland'
    and last_connection like '%112.%'
group by
    first_name,
    last_name,
    country,
    last_connection;
-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 
Select
    count(*),
    first_name,
    last_name,
    country,
    last_connection
from
    users
where
    country like 'Iceland'
    and (
        last_connection like '%112.%'
        or last_connection like '%28.%'
        or last_connection like '%188.%'
    )
group by
    first_name,
    last_name,
    country,
    last_connection;

-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también

Select
    first_name,
    last_name,
    country,
    last_connection
from
    users
where
    country like 'Iceland'
    and (
        last_connection like '%112.%'
        or last_connection like '%28.%'
        or last_connection like '%188.%'
    )
group by
    first_name,
    last_name,
    country,
    last_connection
order BY
    last_name asc;


Select
    first_name,
    last_name,
    country,
    last_connection
from
    users
where
    country like 'Iceland'
    and (
        last_connection like '%112.%'
        or last_connection like '%28.%'
        or last_connection like '%188.%'
    )
group by
    first_name,
    last_name,
    country,
    last_connection
order BY
    first_name desc;
-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)



-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc
