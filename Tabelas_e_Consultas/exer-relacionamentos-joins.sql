

-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
SELECT * FROM cliente;
SELECT
    cln.nome AS Nome,
    prf.nome AS Profissao,
    ncd.nome AS Nacionalidade,
    cln.logradouro AS Logradouro,
    cln.numero AS Numero,
    cpt.nome AS complemento,
    brr.nome AS bairro,
    mcp.nome AS municipio,
    unf.sigla AS UF
FROM
    cliente AS cln
LEFT OUTER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao
LEFT OUTER JOIN
    nacionalidade AS ncd ON cln.idnacionalidade = ncd.idnacionalidade
LEFT OUTER JOIN
    complemento AS cpt ON cln.idcomplemento = cpt.idcomplemento
LEFT OUTER JOIN
    bairro AS brr ON cln.idbairro = brr.idbairro
LEFT OUTER JOIN
    municipio AS mcp ON cln.idmunicipio = mcp.idmunicipio
LEFT OUTER JOIN
    uf AS unf ON mcp.iduf = unf.iduf;

-- 2. O nome do produto, o valor e o nome do fornecedor.
SELECT * FROM produto;
SELECT
    pdt.nome AS Nome_do_Produto,
    pdt.valor AS Valor_do_Produto,
    fnd.nome AS Nome_do_fornecedor
FROM
    produto AS pdt
LEFT OUTER JOIN
    fornecedor AS fnd ON pdt.idfornecedor = fnd.idfornecedor;

-- 3. O nome da transportadora e o município.
SELECT * FROM transportadora;
SELECT
    tpr.nome AS Nome_da_transportadora,
    mcp.nome AS Município
FROM
    transportadora AS tpr
LEFT OUTER JOIN
    municipio AS mcp ON tpr.idmunicipio = mcp.idmunicipio;

-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
SELECT * FROM pedido;
SELECT
    pdo.data_pedido AS Data_do_Pedido,
    pdo.valor AS Valor_do_Pedido,
    cln.nome AS Nome_do_Cliente,
    tpd.nome AS Nome_da_Transportadora,
    vdr.nome AS Nome_do_Vendedor
FROM
    pedido AS pdo
LEFT OUTER JOIN
    cliente AS cln ON pdo.idcliente = cln.idcliente
LEFT OUTER JOIN
    transportadora AS tpd ON pdo.idtransportadora = tpd.idtransportadora
LEFT OUTER JOIN
    vendedor AS vdr ON pdo.idvendedor = vdr.idvendedor;

-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
SELECT * FROM pedido_produto;
SELECT
    pdt.nome AS Nome_do_Produto,
    pdp.quantidade AS Quantidade,
    pdp.valor_unitario AS Valor_Unitario
FROM
    pedido_produto AS pdp
LEFT OUTER JOIN
    produto AS pdt ON pdp.idproduto = pdt.idproduto;

-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).

-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).

-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).

-- 15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).