
-- Subconsultas

-- Selecionar a data do pedido e o valor onde o valor seja maior que a média dos valores de todos os pedidos
SELECT
    data_pedido,
    valor
FROM
    pedido
WHERE
    valor > (SELECT AVG(valor) FROM pedido);

-- Exemplo com COUNT
SELECT
    pdo.data_pedido,
    pdo.valor,
    (
        SELECT
            SUM(quantidade) 
        FROM 
            pedido_produto AS pdp 
        WHERE 
            pdp.idpedido = pdo.idpedido
    ) AS total
FROM
    pedido AS pdo;

-- Exemplo com update
UPDATE
    pedido
SET
    valor = valor + ((valor * 5) / 100)
WHERE
    valor > (SELECT AVG(valor) FROM pedido);
