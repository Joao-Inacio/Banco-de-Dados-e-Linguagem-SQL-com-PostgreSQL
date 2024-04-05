-- Active: 1710766883456@@127.0.0.1@5432@pedido
ALTER TABLE cliente RENAME COLUMN profissao TO idprofissao;

ALTER TABLE cliente DROP idprofissao;

ALTER TABLE cliente ADD idprofissao INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (idprofissao) REFERENCES profissao (idprofissao);

UPDATE cliente SET idprofissao = 1 WHERE idcliente IN (1, 9, 10, 12, 15, 17);

UPDATE cliente SET idprofissao = 2 WHERE idcliente = 2;

UPDATE cliente SET idprofissao = 3 WHERE idcliente = 3;

UPDATE cliente SET idprofissao = 4 WHERE idcliente IN (4, 5);

UPDATE cliente SET idprofissao = 5 WHERE idcliente IN (6, 7, 8, 13);

SELECT * FROM cliente;

SELECT * FROM profissao;

ALTER TABLE cliente DROP nacionalidade;

ALTER TABLE cliente ADD idnacionalidade INTEGER;

ALTER TABLE cliente
ADD CONSTRAINT fk_cln_idnacionalidade FOREIGN KEY (idnacionalidade) REFERENCES nacionalidade (idnacionalidade);

UPDATE cliente SET idnacionalidade = 1 WHERE idcliente IN (1, 2, 3, 4, 6, 10, 11, 14);
UPDATE cliente SET idnacionalidade = 2 WHERE idcliente IN (5, 7);
UPDATE cliente SET idnacionalidade = 3 WHERE idcliente = 8;
UPDATE cliente SET idnacionalidade = 4 WHERE idcliente IN (9, 13);

SELECT * FROM cliente;

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

SELECT * FROM cliente;

CREATE TABLE uf (
    iduf INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    sigla CHAR(2) NOT NULL,
    CONSTRAINT pk_ufd_idunidade_federecao PRIMARY KEY (iduf),
    CONSTRAINT un_ufd_nome UNIQUE (nome),
    CONSTRAINT un_ufd_sigla UNIQUE (sigla)
);

INSERT INTO uf (iduf, nome, sigla) VALUES (1, 'Santa Catarina', 'SC');
INSERT INTO uf (iduf, nome, sigla) VALUES (2, 'Paranaá', 'PR');
INSERT INTO uf (iduf, nome, sigla) VALUES (3, 'São Paulo', 'SP');
INSERT INTO uf (iduf, nome, sigla) VALUES (4, 'Minas Gerais', 'MG');
INSERT INTO uf (iduf, nome, sigla) VALUES (5, 'Rio Grande do Sul', 'RS');
INSERT INTO uf (iduf, nome, sigla) VALUES (6, 'Rio de Janeiro', 'RJ');

SELECT * FROM uf;

CREATE TABLE municipio (
    idmunicipio INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    iduf INTEGER NOT NULL,
    CONSTRAINT pk_mnc_idmunicipio PRIMARY KEY (idmunicipio),
    CONSTRAINT un_mnc_nome UNIQUE (nome),
    CONSTRAINT fk_mnc_iduf FOREIGN KEY (iduf) REFERENCES uf (iduf)
);

INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (1, 'Porto União', 1);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (2, 'Canoinhas', 1);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (3, 'Porto Vitória', 2);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (4, 'General Carneiro', 2);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (5, 'São Paulo', 3);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (6, 'Rio de Janeiro', 6);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (7, 'Uberlândia', 4);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (8, 'Porto Alegre', 5);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (9, 'União da Vitoria', 2);

SELECT * FROM municipio;

ALTER TABLE cliente DROP municipio;
ALTER TABLE cliente DROP uf;
ALTER TABLE cliente ADD idmunicipio INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cliente_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES municipio (idmunicipio);

SELECT * FROM cliente;

UPDATE cliente SET idmunicipio = 1 WHERE idcliente IN (1, 2, 10, 11);
UPDATE cliente SET idmunicipio = 2 WHERE idcliente IN (3, 12);
UPDATE cliente SET idmunicipio = 3 WHERE idcliente = 4;
UPDATE cliente SET idmunicipio = 4 WHERE idcliente = 5;
UPDATE cliente SET idmunicipio = 5 WHERE idcliente IN (6, 13);
UPDATE cliente SET idmunicipio = 6 WHERE idcliente = 7;
UPDATE cliente SET idmunicipio = 7 WHERE idcliente = 8;
UPDATE cliente SET idmunicipio = 8 WHERE idcliente = 9;
UPDATE cliente SET idmunicipio = 9 WHERE idcliente IN (14, 15);

SELECT * FROM cliente;