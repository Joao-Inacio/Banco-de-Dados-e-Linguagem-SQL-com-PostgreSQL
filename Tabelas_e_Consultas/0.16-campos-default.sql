-- Campos Default
-- Para data na tabela pedido
ALTER TABLE pedido ALTER COLUMN data_pedido SET DEFAULT CURRENT_DATE;

-- Para o Valor
ALTER TABLE pedido ALTER COLUMN valor SET DEFAULT 0;

-- Testando inserindo dados
INSERT INTO pedido (idcliente, idvendedor) VALUES (1, 1);

-- Visualizando
SELECT * FROM pedido;
