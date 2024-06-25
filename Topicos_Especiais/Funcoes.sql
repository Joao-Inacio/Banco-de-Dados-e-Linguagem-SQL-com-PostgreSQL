-- Active: 1714994625333@@127.0.0.1@5432@pedido

--Funções
SELECT
    valor, 
    CONCAT('R$ ', ROUND(CAST(valor AS NUMERIC), 2)) 
FROM 
    pedido;

-- Criando a função
CREATE FUNCTION formata_moeda(valor FLOAT) RETURNS VARCHAR(20) LANGUAGE plpgsql AS
$$
BEGIN
    RETURN CONCAT('R$ ', ROUND(CAST(valor AS NUMERIC), 2));
END;
$$;

-- Executando a Função
SELECT
    valor,
    formata_moeda(valor)
FROM 
    pedido;

-- Executando a Função
SELECT
    valor,
    formata_moeda(valor)
FROM
    produto;

-- Criando outra Função
CREATE FUNCTION get_nome_by_id(idc INTEGER) RETURNS VARCHAR(50) LANGUAGE plpgsql AS
$$
DECLARE r VARCHAR(50);
BEGIN
    SELECT nome INTO r FROM cliente WHERE idcliente = idc;
    RETURN r;
END;
$$;

-- Testando a Função
SELECT
    data_pedido,
    valor,
    idcliente,
    get_nome_by_id(idcliente)
FROM
    pedido
