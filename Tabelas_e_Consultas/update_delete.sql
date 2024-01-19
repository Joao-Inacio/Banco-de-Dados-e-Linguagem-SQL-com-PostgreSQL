-- Active: 1705323844254@@127.0.0.1@5432@pedido
SELECT * FROM cliente;

UPDATE cliente SET nome = 'Lucas' WHERE idcliente = 1;

UPDATE cliente SET nome = 'Adriano', genero = 'M', numero = '241' WHERE idcliente = 4;

INSERT INTO cliente (idcliente, nome) VALUES (16, 'João');

DELETE FROM cliente WHERE idcliente = 16;
