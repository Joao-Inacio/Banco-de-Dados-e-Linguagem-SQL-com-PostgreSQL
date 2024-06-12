-- 1. Adicione índices nas seguintes tabelas e campos

-- a. Pedido – data do pedido
SELECT * FROM pedido;

CREATE INDEX idx_pdd_data ON pedido (data_pedido);

-- b. Produto – nome
SELECT * FROM produto;

CREATE INDEX idx_pdt_nome ON produto (nome);
