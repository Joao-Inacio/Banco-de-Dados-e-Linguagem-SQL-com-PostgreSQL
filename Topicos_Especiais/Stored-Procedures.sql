-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- Stored Procedures

-- Criando uma Procedures
CREATE PROCEDURE insere_bairro(nome_bairro VARCHAR(30)) LANGUAGE SQL AS
$$
    INSERT INTO bairro (nome) VALUES (nome_bairro);
$$;

-- Testando a Procedure
CALL insere_bairro('Lagos');

-- Visualizando a tabela
SELECT * FROM bairro;

