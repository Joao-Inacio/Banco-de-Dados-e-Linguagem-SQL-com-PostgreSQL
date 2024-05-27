-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
SELECT
    nome
FROM
    cliente
WHERE
    idmunicipio = (SELECT idmunicipio FROM cliente WHERE nome = 'Manoel')
    AND nome <> 'Manoel';

-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
SELECT
    data_pedido,
    valor
FROM
    pedido
WHERE
    valor < (SELECT AVG(valor) FROM pedido);

-- 3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
SELECT
    p.data_pedido,
    p.idcliente,
    p.idvendedor
FROM
    pedido AS p
WHERE
    (
        SELECT COUNT(pp.idproduto)
        FROM pedido_produto AS pp
        WHERE pp.idpedido = p.idpedido
    ) >= 2;

-- 4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
SELECT
    clt.nome
FROM
    cliente AS clt
WHERE
    clt.idmunicipio = (
        SELECT tpd.idmunicipio
        FROM transportadora AS tpd
        WHERE tpd.nome = 'BS. Transportes'
    );

-- 5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
SELECT
    clt.nome,
    clt.idmunicipio
FROM
    cliente AS clt
WHERE
    clt.idmunicipio = (
        SELECT tpd.idmunicipio
        FROM transportadora AS tpd
        WHERE tpd.idmunicipio = clt.idmunicipio
    );

-- 6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total de todos os produtos de todos os pedidos.
UPDATE
    pedido
SET
     valor = valor + ((valor * 5) / 100)
WHERE
    valor > (SELECT AVG(valor) FROM pedido);

-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
SELECT 
    c.nome AS Nome_do_Cliente,
    (SELECT COUNT(*) FROM pedido WHERE idcliente = c.idcliente) AS Quantidade_de_Pedidos
FROM 
    cliente c;

-- 8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.
SELECT 
    c.nome AS Nome_do_Cliente,
    COUNT(p.idpedido) AS Quantidade_de_Pedidos
FROM 
    cliente c
INNER JOIN 
    pedido p ON c.idcliente = p.idcliente
GROUP BY 
    c.nome
HAVING 
    COUNT(p.idpedido) >= 1;

