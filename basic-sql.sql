CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);


INSERT INTO user(name, edad, email) VALUES 	(
	'Matias',
    22,
    'matiaspiris2001@gmail.com'
);

INSERT INTO user(name, edad, email) VALUES 	(
	'Matias trabajo',
    22,
    'matiaslinkedin17@gmail.com'
);

INSERT INTO user(name, edad, email) VALUES 	(
	'XXX',
    22,
    'xxx@gmail.com'
);

INSERT INTO user(name, edad, email) VALUES 	(
	'XXXnnn',
    22,
    'xxxnnn@gmail.com'
);

select * from user;

-- limitar la cantidad de recursos que se retornan
select * from user limit 1; 

-- actulizar la edad de los registros
update user set edad = 15 where id = 2;
update user set edad = 10 where id = 3;
update user set edad = 44 where id = 4;

select * from user where edad > 15; 

select * from user where edad >= 15; 

select * from user where edad >= 15 and 
email = 'matiaslinkedin17@gmail.com' ; 

select * from user where edad > 15 or 
email = 'nnn@gmail.com' ; 

-- Negacion
select * from user where email != 'xxx@gmail.com';

-- seleccion todo entre esos valores
select * from user where edad between 20 and 50;

-- busca los email que contengan los caracteres despues de like
select * from user where email like '%gmail%';

select * from user where email like '%gmail';

select * from user where email like 'matias%';

-- seleccion todos los registros de manera ascendente
select * from user order by edad asc;

select * from user order by id desc;

-- seleccion la columna con mayor edad
select max(edad) as mayor from user;

select min(edad) as mayor from user;

-- seleccionamos columnas especificas
select id,email from user;

-- seleccionamos columnas especificas y cambiamos el nombre
select id as ID, email as mail from user;
