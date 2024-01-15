-- Active: 1705323844254@@127.0.0.1@5432@pedido
SELECT * FROM cliente;

SELECT nome, data_nascimento FROM cliente;

SELECT nome, data_nascimento as "Data de nascimento" FROM cliente;

SELECT 'CPF: ' || cpf || ' RG: ' ||  rg FROM cliente;

SELECT * FROM cliente LIMIT 3;


