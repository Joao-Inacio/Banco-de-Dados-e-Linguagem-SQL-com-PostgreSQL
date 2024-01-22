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

ALTER TABLE cliente DROP nacionalidade;

ALTER TABLE cliente ADD idnacionalidade INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idnacionalidade FOREIGN KEY (idnacionalidade) REFERENCES nacionalidade (idnacionalidade);

UPDATE cliente SET idnacionalidade = 1 WHERE idcliente IN (1, 2, 3, 4, 6, 10, 11, 14);
UPDATE cliente SET idnacionalidade = 2 WHERE idcliente IN (5, 7);
UPDATE cliente SET idnacionalidade = 3 WHERE idcliente = 8;
UPDATE cliente SET idnacionalidade = 4 WHERE idcliente IN (9, 13);

ALTER TABLE cliente DROP complemento;

ALTER TABLE cliente ADD idcomplemento INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idcomplemento FOREIGN KEY (idcomplemento) REFERENCES complemento (idcomplemento);

UPDATE cliente SET idcomplemento = 1 WHERE idcliente IN (1, 4, 9, 13);

UPDATE cliente SET idcomplemento = 2 WHERE idcliente IN (2, 3, 7);

SELECT * FROM cliente;

ALTER TABLE cliente DROP bairro;

ALTER TABLE cliente ADD idbairro INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idbairro FOREIGN KEY (idbairro) REFERENCES bairro (idbairro);

UPDATE cliente SET idbairro = 1 WHERE idcliente IN (1, 12, 13);
UPDATE cliente SET idbairro = 2 WHERE idcliente IN (2, 3, 6, 8, 9);
UPDATE cliente SET idbairro = 3 WHERE idcliente IN (4, 5);
UPDATE cliente SET idbairro = 4 WHERE idcliente = 7;
