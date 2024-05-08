-- Active: 1714994625333@@127.0.0.1@5432@pedido
-- Relacionamento com Joins

-- Left Join
SELECT
    cln.nome AS nome,
    prf.nome AS Profissão
FROM
    cliente AS cln
LEFT OUTER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao;

-- Inner Join
SELECT
    cln.nome AS nome,
    prf.nome AS Profissão
FROM
    cliente AS cln
INNER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao;

-- Right Join
SELECT
    cln.nome AS nome,
    prf.nome AS Profissão
FROM
    cliente AS cln
RIGHT OUTER JOIN
    profissao AS prf ON cln.idprofissao = prf.idprofissao;
