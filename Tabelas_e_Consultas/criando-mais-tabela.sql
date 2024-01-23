-- Active: 1705323844254@@127.0.0.1@5432@pedido
CREATE TABLE profissao (
    idprofissao INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    CONSTRAINT pk_prf_idprofissao PRIMARY KEY (idprofissao),
    CONSTRAINT un_prf_nome UNIQUE (nome)
);

INSERT INTO profissao (idprofissao, nome) VALUES (1, 'Estudante');
INSERT INTO profissao (idprofissao, nome) VALUES (2, 'Engenheiro');
INSERT INTO profissao (idprofissao, nome) VALUES (3, 'Pedreiro');
INSERT INTO profissao (idprofissao, nome) VALUES (4, 'Jornalista');
INSERT INTO profissao (idprofissao, nome) VALUES (5, 'Professor');

SELECT * FROM profissao;

CREATE TABLE nacionalidade (
    idnacionalidade INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    CONSTRAINT pk_ncn_idnacionalidade PRIMARY KEY (idnacionalidade),
    CONSTRAINT un_ncn_nome UNIQUE (nome)
);

INSERT INTO nacionalidade (idnacionalidade, nome) VALUES (1, 'Brasileira');
INSERT INTO nacionalidade (idnacionalidade, nome) VALUES (2, 'Italiana');
INSERT INTO nacionalidade (idnacionalidade, nome) VALUES (3, 'Norte-Americana');
INSERT INTO nacionalidade (idnacionalidade, nome) VALUES (4, 'Alemã');

SELECT * FROM nacionalidade;

CREATE TABLE complemento (
    idcomplemento INTEGER NOT NULL,
    nome VARCHAR (30) NOT NULL,
    CONSTRAINT pk_cpl_idcomplemento PRIMARY KEY (idcomplemento),
    CONSTRAINT un_cpl_nome UNIQUE (nome)
);

INSERT INTO complemento (idcomplemento, nome) VALUES (1, 'Casa');
INSERT INTO complemento (idcomplemento, nome) VALUES (2, 'Apartamento');

SELECT * FROM complemento;

CREATE TABLE bairro (
    idbairro INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    CONSTRAINT pk_brr_idbairro PRIMARY KEY (idbairro),
    CONSTRAINT un_brr_nome UNIQUE (nome)
);

INSERT INTO bairro (idbairro, nome) VALUES (1, 'Cidade Nova');
INSERT INTO bairro (idbairro, nome) VALUES (2, 'Centro');
INSERT INTO bairro (idbairro, nome) VALUES (3, 'São Pedro');
INSERT INTO bairro (idbairro, nome) VALUES (4, 'Santa Rosa');

CREATE TABLE uf (
    iduf INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    sigla CHAR(2) NOT NULL,
    CONSTRAINT pk_ufd_idunidade_federacao PRIMARY KEY (iduf),
    CONSTRAINT un_ufd_nome UNIQUE (nome),
    CONSTRAINT un_ufd_sigla UNIQUE (sigla)
);


INSERT INTO uf (iduf, nome, sigla) VALUES (1, 'Santa Catarina', 'SC');
INSERT INTO uf (iduf, nome, sigla) VALUES (2, 'Paraná', 'PR');
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
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (5, 'Sao Paulo', 3);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (6, 'Rio de Janeiro', 6);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (7, 'Uberlândia', 4);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (8, 'Porto Alegre', 5);
INSERT INTO municipio (idmunicipio, nome, iduf) VALUES (9, 'União da Vitória', 2);

SELECT * FROM municipio;