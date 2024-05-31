
-- Autoincremento

-- Criando uma tabela de exemplo
CREATE TABLE exemplo (
    idexemplo SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT pk_exemplo_idexemplo PRIMARY KEY (idexemplo)
);

-- Adicionado dados
INSERT INTO exemplo (nome) VALUES ('Nome 1');
INSERT INTO exemplo (nome) VALUES ('Nome 2');
INSERT INTO exemplo (nome) VALUES ('Nome 3');
INSERT INTO exemplo (nome) VALUES ('Nome 4');
INSERT INTO exemplo (nome) VALUES ('Nome 5');

SELECT * FROM exemplo;


-- Atualizando a tabela bairro
SELECT * FROM bairro;

-- Encontrar o próximo valor de idbairro
SELECT MAX(idbairro) + 1 FROM bairro;

-- Criar uma sequência
CREATE SEQUENCE bairro_id_seq MINVALUE 5;

-- Alterar a tabela para usar a sequência
ALTER TABLE bairro ALTER idbairro SET DEFAULT NEXTVAL('bairro_id_seq');

-- Associar a sequência à coluna
ALTER SEQUENCE bairro_id_seq OWNED BY bairro.idbairro;
