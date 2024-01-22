-- Active: 1705323844254@@127.0.0.1@5432@pedido
ALTER TABLE cliente RENAME COLUMN profissao TO idprofissao;

ALTER TABLE cliente DROP idprofissao;

ALTER TABLE cliente ADD idprofissao INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (idprofissao) REFERENCES profissao (idprofissao);

UPDATE cliente SET idprofissao = 1 WHERE idcliente IN (1, 9, 10, 12, 15, 17);

UPDATE cliente SET idprofissao = 2 WHERE idcliente = 2;

UPDATE cliente SET idprofissao = 3 WHERE idcliente = 3;

UPDATE cliente SET idprofissao = 4 WHERE idcliente IN (4, 5);

UPDATE cliente SET idprofissao = 1 WHERE idcliente IN (6, 7, 8, 13);

SELECT * FROM cliente;

