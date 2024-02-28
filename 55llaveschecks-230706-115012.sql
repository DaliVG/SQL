

-- 1. Crear una llave primaria en city (id)
alter table
    city
add
    primary key (id);
-- 2. Crear un check en population, para que no soporte negativos

alter table
    city
add
    check (population > 0);

-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language
alter table
    countrylanguage
add
    primary key (countrycode, language);

-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100

alter table
    countrylanguage
add
    check (
        percentage >= 0
        and percentage <= 100
    );