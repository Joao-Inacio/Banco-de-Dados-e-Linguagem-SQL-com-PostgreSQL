-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Triggers

-- Criando uma nova tabela para o teste
CREATE TABLE bairro_auditoria (
    idbairro INTEGER NOT NULL,
    data_criacao TIMESTAMP NOT NULL
);

-- Criando uma função para o trigger
CREATE OR REPLACE FUNCTION bairro_log() RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
    INSERT INTO bairro_auditoria (idbairro, data_criacao) VALUES (NEW.idbairro, CURRENT_TIMESTAMP);
    RETURN NEW;
END;
$$;

-- Associando e criando a trigger
CREATE OR REPLACE TRIGGER
    log_bairro_trigger 
AFTER INSERT ON 
    bairro 
FOR EACH ROW EXECUTE PROCEDURE 
    bairro_log();

-- Inserido dado para testa
INSERT INTO bairro (nome) VALUES ('Lago Novo');

-- Visualizando a tabela bairro
SELECT * FROM bairro;

-- Visualizando a tabela bairro auditoria
SELECT * FROM bairro_auditoria;
