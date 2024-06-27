-- Exercícios triggers

-- 1. Crie uma tabela chamada PEDIDOS_APAGADOS
CREATE TABLE pedido_apagado (
    idpedido INTEGER NOT NULL,
    idcliente INTEGER NOT NULL,
    idvendedor INTEGER NOT NULL,
    data_exclusao TIMESTAMP NOT NULL,
    valor FLOAT NOT NULL
);

-- 2. Faça uma trigger que quando um pedido for apagado, todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS
-- Criando uma função para o trigger
CREATE OR REPLACE FUNCTION pedido_log() RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
    INSERT INTO 
        pedido_apagado (idpedido, idcliente, idvendedor, data_exclusao, valor)
    VALUES 
        (OLD.idpedido, OLD.idcliente, OLD.idvendedor, CURRENT_TIMESTAMP, OLD.valor);
    RETURN OLD;
END;
$$;

-- Associando e criando a trigger
CREATE OR REPLACE TRIGGER
    log_pedido_trigger 
BEFORE DELETE ON 
    pedido 
FOR EACH ROW EXECUTE PROCEDURE 
    pedido_log();

-- Inserindo dados para testa
INSERT INTO pedido (data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES ('2009-05-05', 300, 1, 1, 1);

-- Apagando o dado
DELETE FROM pedido WHERE idpedido = 17;

-- Visualizando a tabela pedido_apagado
SELECT * FROM pedido_apagado;

