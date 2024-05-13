-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Comandos adicionais

SELECT * FROM pedido;

-- Extraindo o dia
SELECT data_pedido, EXTRACT(DAY FROM data_pedido) FROM pedido;

-- Extraindo o dia e Més
SELECT
    data_pedido, 
    EXTRACT(DAY FROM data_pedido),
    EXTRACT(MONTH FROM data_pedido)
FROM 
    pedido;

-- Extraindo o dia e Més e ano
SELECT
    data_pedido, 
    EXTRACT(DAY FROM data_pedido) AS dia,
    EXTRACT(MONTH FROM data_pedido) AS mes,
    EXTRACT(YEAR FROM data_pedido) AS ano
FROM 
    pedido;

-- Extraindo uma substring
SELECT nome, SUBSTRING(nome FROM 1 FOR 5) FROM cliente;

-- Extraindo uma fatia da string
SELECT nome, SUBSTRING(nome FROM 1 FOR 5), SUBSTRING(nome, 2) FROM cliente;

-- Transformando string
SELECT nome, UPPER(nome) from cliente;

-- Transformando valores nulos
SELECT nome, cpf, COALESCE(cpf, 'Não informado') FROM cliente;

-- Usando CASE
SELECT
    CASE sigla
        WHEN 'PR' THEN 'Paraná'
        WHEN 'SC' THEN 'Santa Catarina'
        WHEN 'RJ' THEN 'Rio de Janeiro'
    ELSE 'Outros'
    END AS uf
FROM
    uf;

