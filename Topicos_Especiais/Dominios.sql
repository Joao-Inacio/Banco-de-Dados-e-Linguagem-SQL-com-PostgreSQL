-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Domínios

-- IDs
CREATE DOMAIN idcurto AS SMALLINT;

CREATE DOMAIN idmedio AS INTEGER;

CREATE DOMAIN idlongo AS BIGINT;

-- Caracteres
CREATE DOMAIN sigla AS CHAR(3);

CREATE DOMAIN codigo AS VARCHAR(10);

CREATE DOMAIN nome_curto AS VARCHAR(15);

CREATE DOMAIN nome_medio AS VARCHAR(50);

CREATE DOMAIN nome_longo AS VARCHAR(70);

-- Data e Hora
CREATE DOMAIN datas AS DATE;

CREATE DOMAIN horas AS TIME;

CREATE DOMAIN data_horas TIMESTAMP;

-- Numéricos
CREATE DOMAIN moeda AS NUMERIC(10,2);

CREATE DOMAIN float_curto AS NUMERIC(6,2);

CREATE DOMAIN float_medio AS NUMERIC(10,2);

CREATE DOMAIN float_longo AS NUMERIC(10,2);

-- Testando na tabela Pedido Apagado
ALTER TABLE pedido_apagado ALTER COLUMN valor TYPE moeda;
