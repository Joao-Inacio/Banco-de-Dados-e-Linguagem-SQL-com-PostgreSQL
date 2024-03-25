-- Active: 1710766883456@@127.0.0.1@5432@pedido
SELECT * FROM cliente;

SELECT nome, data_nascimento FROM cliente;

SELECT nome, data_nascimento as "Data de nascimento" FROM cliente;

SELECT 'CPF: ' || cpf || ' RG: ' ||  rg as "CPF e RG" FROM cliente;

SELECT * FROM cliente LIMIT 3;

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';

SELECT nome FROM cliente WHERE nome LIKE 'C%';

SELECT nome FROM cliente WHERE nome LIKE '%c%';

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';

SELECT nome, rg FROM cliente WHERE rg IS NULL;

SELECT nome FROM cliente ORDER BY nome ASC;

SELECT nome FROM cliente ORDER BY nome DESC;