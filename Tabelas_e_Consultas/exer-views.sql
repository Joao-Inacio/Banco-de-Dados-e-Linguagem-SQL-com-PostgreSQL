-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Exercícios views

-- 1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
SELECT * FROM cliente;
CREATE VIEW clientes AS
SELECT
    cln.nome AS Nome,
    prf.nome AS Profissao,
    ncd.nome AS Nacionalidade,
    cpt.nome AS complemento,
    mcp.nome AS municipio,
    unf.sigla AS UF,
    brr.nome AS bairro,
    cln.cpf AS cpf,
    cln.rg AS rg,
    cln.data_nascimento AS data_nascimento,
    CASE cln.genero
        WHEN 'F' THEN 'Feminino'
        WHEN 'M' THEN 'Masculino'
    ELSE 'Outros'
    END AS genero,
    cln.logradouro AS Logradouro,
    cln.numero AS Numero,
    cln.observacoes AS observacoes
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

SELECT * FROM clientes;

-- 2. O nome do município e o nome e a sigla da unidade da federação.
CREATE VIEW municipios AS
SELECT
    mcp.nome AS municipio,
    unf.sigla AS UF
FROM
    municipio AS mcp
LEFT OUTER JOIN
    uf AS unf ON mcp.iduf = unf.iduf;

SELECT * FROM municipios;

-- 3. O nome do produto, o valor e o nome do fornecedor dos produtos.
SELECT * FROM produto;
CREATE VIEW produtos AS
SELECT
    pdt.nome AS nome,
    pdt.valor AS valor,
    fnd.nome AS nome_do_fornecedor
FROM 
    produto AS pdt
LEFT OUTER JOIN
    fornecedor AS fnd ON pdt.idfornecedor = fnd.idfornecedor;

SELECT * FROM produtos;

-- 4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
SELECT * FROM transportadora;
SELECT * FROM uf;

CREATE VIEW transportadoras AS
SELECT
    tpd.nome AS nome,
    tpd.logradouro AS logradouro,
    tpd.numero AS numero,
    unf.nome AS estado,
    unf.sigla AS uf
FROM
    transportadora AS tpd
LEFT OUTER JOIN
    municipio AS mcp ON tpd.idmunicipio = mcp.idmunicipio
LEFT OUTER JOIN
    uf AS unf ON mcp.iduf = unf.iduf;

SELECT * FROM transportadoras;

-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
SELECT * FROM pedido;
CREATE VIEW pedidos AS
SELECT
    pdd.data_pedido AS data_pedido,
    pdd.valor AS valor,
    tpd.nome AS nome_da_transportadora,
    cln.nome AS nome_do_cliente,
    vdr.nome AS nome_do_vendedor
FROM
    pedido AS pdd
LEFT OUTER JOIN
    transportadora AS tpd ON tpd.idtransportadora = pdd.idtransportadora
LEFT OUTER JOIN
    cliente AS cln ON cln.idcliente = pdd.idcliente
LEFT OUTER JOIN
    vendedor AS vdr ON vdr.idvendedor = pdd.idvendedor;

SELECT * FROM pedidos;

-- 6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
SELECT * FROM produto;
CREATE VIEW pedidos_produtos AS
SELECT
    pdt.nome AS nome_do_produto,
    pdp.quantidade AS quantidade,
    pdp.valor_unitario AS valor_unitario,
    (pdp.quantidade * pdp.valor_unitario) AS valor_total_dos_pedido_produto
FROM
    pedido_produto AS pdp
LEFT OUTER JOIN
    produto AS pdt ON pdt.idproduto = pdp.idproduto;

SELECT * FROM pedidos_produtos;

