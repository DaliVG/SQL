

-- 1. Ver todos los registros
select
    *
from
    users;
-- 2. Ver el registro cuyo id sea igual a 10
select
    name
from
    users
where
    id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)

select
    name
from
    users
where
   name LIKE 'Jim %';
-- 4. Todos los registros cuyo segundo nombre es Alexander
select
    name
from
    users
where
   name LIKE '_%Alexander%';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
update
    users
set
    name = 'Dali Vidic'
where
    id = 1;

-- 6. Borrar el último registro de la tabla
    
delete from
    users
where id = (SELECT max(id) from
    users);