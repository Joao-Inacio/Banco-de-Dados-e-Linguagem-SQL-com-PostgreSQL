-- Active: 1710766883456@@127.0.0.1@5432@pedido
CREATE TABLE pedido_produto (
    idpedido INTEGER NOT NULL, 
    idproduto INTEGER NOT NULL, 
    quantidade INTEGER NOT NULL, 
    valor_unitario FLOAT NOT NULL, 
    CONSTRAINT pk_pdp_idpedidoproduto PRIMARY KEY (idpedido, idproduto), 
    CONSTRAINT fk_pdp_idpedido FOREIGN KEY (idpedido) REFERENCES pedido (idpedido), 
    CONSTRAINT fk_pdp_idproduto FOREIGN KEY (idproduto) REFERENCES produto (idproduto)
);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (1, 1, 1, 800);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (1, 2, 1, 500);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (2, 2, 1, 500);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (3, 4, 2, 150);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (4, 1, 1, 800);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (4, 3, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (5, 3, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (6, 1, 2, 800);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (6, 7, 1, 35);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (6, 5, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (6, 4, 1, 150);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (7, 1, 1, 800);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (8, 7, 5, 35);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (9, 1, 1, 800);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (9, 2, 1, 500);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (10, 5, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (11, 5, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (11, 6, 1, 100);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (12, 2, 1, 500);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (13, 3, 1, 200);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (13, 4, 1, 150);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (14, 6, 3, 100);

INSERT INTO
    pedido_produto (
        idpedido, idproduto, quantidade, valor_unitario
    )
VALUES (15, 3, 1, 200);

SELECT * FROM pedido_produto;
