CREATE TABLE products (
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key (id),
    -- hacer una referencia para el id del usuario que creo el
	-- producto
    foreign key (created_by) references user(id)
);

show tables;

-- cambiar el nombre de la tabla
rename table products to product;
rename table animales to animal;

insert into product (name, created_by, marca) values 
	('celular', 1, 'samsung'),
    ('computadora', 2, 'lenovo'),
    ('cargador', 2, 'motorola'),
    ('telefono', 3, 'iphone'),
    ('teclado', 1, 'hyperex');
    

select * from product;

-- left join es para buscar todos los registros de las tablas.
-- la tabla que dominante es la de la izquierda
select u.id, u.email, p.name from user u left join product p 
on u.id = p.created_by;

-- left join es para buscar todos los registros de las tablas.
-- la tabla que dominante es la de la derecha
select u.id, u.email, p.name from user u right join product p 
on u.id = p.created_by;

-- inner join es para traer todos los registros que si o si esten
-- asociodos y entra la relacion
select u.id, u.email, p.name from user u inner join product p 
on u.id = p.created_by;

-- cross join
select u.id, u.email, p.name from user u cross join product p;

-- groud by
select count(id), marca from product group by marca;
use test;
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

-- having
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by
having count(p.id) > 2;

drop table animal;
drop table product;
drop table user;