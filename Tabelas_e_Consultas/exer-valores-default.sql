-- Active: 1714994625333@@127.0.0.1@5432@pedido
-- 1. Adicione valores default na tabela de produtos do pedido
SELECT * FROM pedido_produto;

    -- a. Quantidade com o valor 1
ALTER TABLE pedido_produto ALTER COLUMN quantidade SET DEFAULT 1;

    -- b. Valor unitário com o valor 0
ALTER TABLE pedido_produto ALTER COLUMN valor_unitario SET DEFAULT 0;

-- Testando Inserindo dados
INSERT INTO pedido_produto (idpedido, idproduto) VALUES (16,2);


-- 2. Adicione valor default na tabela de produtos
SELECT * FROM produto;

    -- a. Valor com o valor 0
ALTER TABLE produto ALTER COLUMN valor SET DEFAULT 0;

-- Testando Inserindo dados
INSERT INTO produto (idfornecedor, nome) VALUES (1, 'Mouse');