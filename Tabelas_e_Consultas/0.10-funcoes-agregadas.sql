-- Active: 1710766883456@@127.0.0.1@5432@pedido

-- Funções Agregadas

-- Média
SELECT AVG(valor) FROM pedido;

-- Contando valores
SELECT COUNT(idmunicipio) FROM municipio;

SELECT COUNT(*) FROM municipio;

-- Contando valores com filtro
SELECT COUNT(idmunicipio) FROM municipio WHERE iduf = 2;

-- Valor máximo
SELECT MAX(valor) FROM pedido;

-- Valor máximo e mínimo
SELECT MAX(valor), MIN(valor) FROM pedido;

-- Somatória
SELECT SUM(valor) FROM pedido;

-- Agrupando
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente;

-- Agrupando com ordenação
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente ORDER BY SUM(valor);

-- Agrupando com condições
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente HAVING SUM(valor) > 500;