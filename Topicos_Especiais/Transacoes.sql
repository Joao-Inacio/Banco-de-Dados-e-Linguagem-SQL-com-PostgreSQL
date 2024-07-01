
-- Transações
CREATE TABLE conta (
    idconta SERIAL NOT NULL,
    cliente nome_medio NOT NULL,
    saldo moeda NOT NULL DEFAULT 0,
    CONSTRAINT pk_cnt_idconta PRIMARY KEY (idconta)
);

-- Inserindo dados
INSERT INTO conta (cliente, saldo) VALUES ('Ana', 1000);

INSERT INTO conta (cliente, saldo) VALUES ('Maria', 500);

-- Visualizando a tabela
SELECT * FROM conta;

-- Realizando uma transações
UPDATE conta SET saldo = saldo - 100 WHERE idconta = 1;
UPDATE conta SET saldo = saldo + 100 WHERE idconta = 2;

-- Realizando o ROLLBACK
BEGIN;
UPDATE conta SET saldo = saldo - 100 WHERE idconta = 1;
UPDATE conta SET saldo = saldo + 100 WHERE idconta = 2;
ROLLBACK;

-- Realizando o COMMIT
BEGIN;
UPDATE conta SET saldo = saldo - 100 WHERE idconta = 1;
UPDATE conta SET saldo = saldo + 100 WHERE idconta = 2;
COMMIT;


