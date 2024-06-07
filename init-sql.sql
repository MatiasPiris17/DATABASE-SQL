CREATE DATABASE test;
SHOW databases;
USE test;
CREATE TABLE animales(
	id int ,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

SHOW tables;

INSERT INTO animales(tipo, estado) VALUES("perro", "vivo");

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
   `id` int NOT NULL AUTO_INCREMENT,
   `tipo` varchar(255) DEFAULT NULL,
   `estado` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 );
 
INSERT INTO animales(tipo, estado) VALUES("gato", "bien");
INSERT INTO animales(tipo, estado) VALUES("conejo", "mal");
INSERT INTO animales(tipo, estado) VALUES("cabra", "mal");

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'mal' AND tipo = 'conejo';

UPDATE animales SET estado = 'bien' WHERE id = 3;
UPDATE animales SET estado = 'mal' WHERE id = 1;

SELECT * FROM animales;

-- tira error o porque para eliminar un registro se tiene que seleccionar el id
DELETE from animales where estado = 'bien'; 

DELETE from animales where id = 2; 

-- tira error porque para actualizar un registro se tiene que pasar el id
UPDATE animales set estado = 'bien' where tipo = 'conejo'; 

