-- Active: 1710766883456@@127.0.0.1@5432@pedido
CREATE TABLE pedido (
    idpedido INTEGER NOT NULL,
    idcliente INTEGER NOT NULL,
    idtransportadora INTEGER,
    idvendedor INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_pdd_idpedido PRIMARY KEY (idpedido),
    CONSTRAINT fk_pdd_idcliente FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
    CONSTRAINT fk_pdd_idtransportadora FOREIGN KEY (idtransportadora) REFERENCES transportadora (idtransportadora),
    CONSTRAINT fk_pdd_idvendedor FOREIGN KEY (idvendedor) REFERENCES vendedor (idvendedor)
);

INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (1, '2008-04-01', 1300, 1, 1, 1);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (2, '2008-04-01', 500, 1, 1, 1);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (3, '2008-04-02', 300, 11, 2, 5);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (4, '2008-04-05', 1000, 8, 1, 7);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (5, '2008-04-06', 200, 9, 2, 6);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (6, '2008-04-06', 1985, 10, 1, 6);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (7, '2008-04-06', 800, 3, 1, 7);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (8, '2008-04-06', 175, 3, NULL, 7);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (9, '2008-04-07' , 1300, 12, NULL, 8);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (10, '2008-04-10', 200, 6, 1, 8);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (11, '2008-04-15', 300, 15, 2, 1);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (12, '2008-04-20', 300, 15, 2, 5);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (13, '2008-04-20', 350, 9, 1, 7);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (14, '2008-04-23', 300, 2, 1, 5);
INSERT INTO pedido (idpedido,  data_pedido, valor, idcliente, idtransportadora, idvendedor) 
VALUES (15, '2008-04-25', 200, 11, NULL, 5);

SELECT * FROM pedido;
