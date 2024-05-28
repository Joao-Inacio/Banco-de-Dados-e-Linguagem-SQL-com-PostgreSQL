-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Views
SELECT
    cln.nome AS cliente,
    prf.nome AS profissao
FROM
    cliente cln
LEFT OUTER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao;

-- criando as views
CREATE VIEW cliente_profissao AS
SELECT
    cln.nome AS cliente,
    prf.nome AS profissao
FROM
    cliente cln
LEFT OUTER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao;

-- Retornando a VIEW
SELECT * FROM cliente_profissao;

-- Excluido uma VIEW
DROP VIEW cliente_profissao;