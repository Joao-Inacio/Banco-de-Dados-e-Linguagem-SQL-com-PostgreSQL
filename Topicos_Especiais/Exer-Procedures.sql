-- Exercícios procedures

-- 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
CREATE PROCEDURE reajuste_preco(idp INTEGER, vlr FLOAT) LANGUAGE SQL AS
$$
    UPDATE produto SET valor = valor + ((valor * vlr) / 100) WHERE idproduto = idp
$$;

-- Testando a Procedure
CALL reajuste_preco(6, 10);

-- Visualizando o Resultado
SELECT * FROM produto;

-- Excluído o Procedure
DROP PROCEDURE IF EXISTS reajuste_preco;

-- Retornado o valor original
UPDATE produto SET valor = 100 WHERE idproduto = 6;

-- 2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
CREATE PROCEDURE exclui_dados(idp INTEGER) LANGUAGE SQL AS
$$
    DELETE FROM produto WHERE idproduto = idp
$$;

-- Inserindo novo dado para o teste
INSERT INTO produto (idfornecedor, nome, valor) VALUES (3, 'Cooler', 15);

-- Testando o Procedure
CALL exclui_dados(9);

-- Visualizando o Resultado
SELECT * FROM produto;
