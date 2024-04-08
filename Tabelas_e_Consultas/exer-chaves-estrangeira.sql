-- Active: 1710766883456@@127.0.0.1@5432@pedido

-- Criando as tabelas

CREATE TABLE fornecedor (
    idfornecedor INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT pk_fnd_idfornecedor PRIMARY KEY(idfornecedor),
    CONSTRAINT un_fnd_nome UNIQUE (nome)
);

CREATE TABLE vendedor (
    idvendedor INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT pk_vnd_idvendedor PRIMARY KEY(idvendedor),
    CONSTRAINT un_vnd_nome UNIQUE (nome)
);

CREATE TABLE transportadora (
    idtransportadora INTEGER NOT NULL,
    idmunicipio INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    logradouro VARCHAR(50),
    numero VARCHAR(10),
    CONSTRAINT pk_tpd_idtransportadora PRIMARY KEY(idtransportadora),
    CONSTRAINT un_tpd_nome UNIQUE (nome),
    CONSTRAINT fk_tpd_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES municipio (idmunicipio)
);

CREATE TABLE produto (
    idproduto INTEGER NOT NULL,
    idfornecedor INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    CONSTRAINT pk_pdt_idproduto PRIMARY KEY(idproduto),
    CONSTRAINT fk_pdt_idfornecedor FOREIGN KEY (idfornecedor) REFERENCES fornecedor (idfornecedor)
);

-- Inserindo os dados
INSERT INTO vendedor(idvendedor, nome) VALUES (1, 'André');
INSERT INTO vendedor(idvendedor, nome) VALUES (2, 'Alisson');
INSERT INTO vendedor(idvendedor, nome) VALUES (3, 'José');
INSERT INTO vendedor(idvendedor, nome) VALUES (4, 'Ailton');
INSERT INTO vendedor(idvendedor, nome) VALUES (5, 'Maria');
INSERT INTO vendedor(idvendedor, nome) VALUES (6, 'Suelem');
INSERT INTO vendedor(idvendedor, nome) VALUES (7, 'Aline');
INSERT INTO vendedor(idvendedor, nome) VALUES (8, 'Silvana');

INSERT INTO fornecedor(idfornecedor, nome) VALUES (1, 'Cap. Computadores');
INSERT INTO fornecedor(idfornecedor, nome) VALUES (2, 'AA. Computadores');
INSERT INTO fornecedor(idfornecedor, nome) VALUES (3, 'BB. Máquinas');

INSERT INTO transportadora(idtransportadora, idmunicipio, nome, logradouro, numero) VALUES (1, 9, 'BS. Transportes', 'Rua das Limas', 01);
INSERT INTO transportadora(idtransportadora, idmunicipio, nome) VALUES (2, 5,'União Transportes');

INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (1, 1, 'Microcomputador', 800);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (2, 1, 'Monitor', 500);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (3, 2, 'Placa mão', 200);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (4, 2, 'HD', 150);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (5, 2, 'Placa de Video', 200);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (6, 3, 'Memória RAM', 100);
INSERT INTO produto(idproduto, idfornecedor, nome, valor) VALUES (7, 1, 'Gabinete', 35);
