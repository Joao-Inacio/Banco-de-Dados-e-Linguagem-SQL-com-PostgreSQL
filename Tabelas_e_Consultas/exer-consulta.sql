-- Active: 1705323844254@@127.0.0.1@5432@pedido

-- 1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
SELECT nome, genero, profissao FROM cliente ORDER BY nome DESC;

-- 2. Os clientes que tenham a letra “R” no nome
SELECT * FROM cliente WHERE nome LIKE '%r%';

-- 3. Os clientes que o nome inicia com a letra “C”
SELECT * FROM cliente WHERE nome LIKE 'C%';

-- 4. Os clientes que o nome termina com a letra “A”
SELECT * FROM cliente WHERE nome LIKE '%a';

-- 5. Os clientes que moram no bairro “Centro”
SELECT * FROM cliente WHERE bairro = 'Centro';

-- 6. Os clientes que moram em complementos que iniciam com a letra “A”
SELECT * FROM cliente WHERE complemento LIKE 'A%';

-- 7. Somente os clientes do sexo feminino
SELECT * FROM cliente WHERE genero = 'F';

-- 8. Os clientes que não informaram o CPF
SELECT * FROM cliente WHERE cpf IS NULL;

-- 9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
SELECT nome, profissao FROM cliente ORDER BY profissao;

-- 10. Os clientes de nacionalidade “Brasileira”
SELECT * FROM cliente WHERE nacionalidade = 'Brasileira';

-- 11. Os clientes que informaram o número da residência
SELECT * FROM cliente WHERE numero IS NOT NULL;

-- 12. Os clientes que moram em Santa Catarina
SELECT * FROM cliente WHERE uf = 'SC';

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
SELECT * FROM cliente WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01';

-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
SELECT
    'Nome: ' || nome ||
    ' Logradouro: ' ||  logradouro ||
    ' Número: ' || numero ||
    ' Complemento: ' || complemento ||
    ' bairro: ' || bairro ||
    ' município: ' || municipio ||
    ' UF: ' || uf 
FROM
    cliente;
