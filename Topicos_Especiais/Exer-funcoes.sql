-- Exercícios funções

-- 1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
SELECT * FROM pedido;

-- Excluindo a Função
DROP FUNCTION IF EXISTS valor_total (INTEGER);

-- Criando a função
CREATE FUNCTION valor_total(idp INTEGER) RETURNS FLOAT LANGUAGE plpgsql AS
$$
DECLARE 
    v FLOAT;
BEGIN
    SELECT valor INTO v FROM pedido WHERE idpedido = idp;
    RETURN v;
END;
$$;

SELECT
    *,
    valor_total(idpedido)
FROM
    pedido;

-- 2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
CREATE FUNCTION maior() RETURNS FLOAT LANGUAGE plpgsql AS
$$
BEGIN
    RETURN (SELECT MAX(valor) FROM pedido LIMIT 1);
END;
$$;

SELECT
    maior()
FROM
    pedido;

DROP FUNCTION IF EXISTS maior();
