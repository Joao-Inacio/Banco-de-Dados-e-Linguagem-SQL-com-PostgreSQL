-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
SELECT * FROM pedido;
SELECT ROUND(AVG(valor)::NUMERIC, 2) as Media_valor FROM pedido WHERE valor > 200;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
SELECT COUNT(idpedido) as Vendedor FROM pedido WHERE valor > 1500

-- 3. O somatório das vendas de cada vendedor.
SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor ORDER BY idvendedor;

-- 4. A quantidade de municípios.
SELECT COUNT(idmunicipio) FROM municipio;

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
SELECT COUNT(idmunicipio) FROM municipio WHERE iduf IN (5,6)

-- 6. A quantidade de municípios por estado.
SELECT iduf, COUNT(idmunicipio) FROM municipio GROUP BY iduf;

-- 7. A quantidade de clientes que informaram o logradouro.
SELECT COUNT(idcliente) FROM cliente WHERE logradouro IS NOT NULL;

-- 8. A quantidade de clientes por município.
SELECT idmunicipio, COUNT(idcliente) FROM cliente GROUP BY idmunicipio ORDER BY idmunicipio;

-- 9. A quantidade de fornecedores.
SELECT COUNT(idfornecedor) FROM fornecedor;

-- 10. A quantidade de produtos por fornecedor.
SELECT idfornecedor, COUNT(idproduto) FROM produto GROUP BY idfornecedor;

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
SELECT idfornecedor, AVG(valor) FROM produto WHERE idfornecedor = 2 GROUP BY idfornecedor;

-- 12. O somatório dos preços de todos os produtos.
SELECT SUM(valor) FROM produto;

-- 13. O nome do produto e o preço somente do produto mais caro.
SELECT nome, valor FROM produto ORDER BY valor DESC LIMIT 1;

-- 14. O nome do produto e o preço somente do produto mais barato.
SELECT nome, valor FROM produto ORDER BY valor ASC LIMIT 1;

-- 15. A média de preço de todos os produtos.
SELECT AVG(valor) FROM produto;

-- 16. A quantidade de transportadoras.
SELECT COUNT(idtransportadora) FROM transportadora;

-- 17. A média do valor de todos os pedidos.
SELECT AVG(valor) FROM pedido;

-- 18. O somatório do valor do pedido agrupado por cliente.
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente ORDER BY idcliente;

-- 19. O somatório do valor do pedido agrupado por vendedor.
SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor ORDER BY idvendedor;

-- 20. O somatório do valor do pedido agrupado por transportadora.
SELECT idtransportadora, SUM(valor) FROM pedido GROUP BY idtransportadora ORDER BY idtransportadora;

-- 21. O somatório do valor do pedido agrupado pela data.
SELECT data_pedido, SUM(valor) FROM pedido GROUP BY data_pedido ORDER BY data_pedido;

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
SELECT idcliente, idvendedor, idtransportadora, SUM(valor) FROM pedido GROUP BY idcliente, idvendedor, idtransportadora;

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
SELECT data_pedido, SUM(valor)
FROM pedido WHERE data_pedido BETWEEN '2008-04-01' AND '2009-12-10'
GROUP BY data_pedido  HAVING SUM(valor) > 200;

-- 24. A média do valor do pedido do vendedor André.
SELECT idvendedor, AVG(valor) FROM pedido WHERE idvendedor = 1 GROUP BY idvendedor;

-- 25. A média do valor do pedido da cliente Jéssica.
SELECT idcliente, AVG(valor) FROM pedido WHERE idcliente = 15 GROUP BY idcliente;

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
SELECT idtransportadora, COUNT(idpedido) FROM pedido WHERE idtransportadora = 1 GROUP BY idtransportadora;

-- 27. A quantidade de pedidos agrupados por vendedor.
SELECT idvendedor, COUNT(idpedido) FROM pedido GROUP BY idvendedor ORDER BY idvendedor;

-- 28. A quantidade de pedidos agrupados por cliente.
SELECT idcliente, COUNT(idpedido) FROM pedido GROUP BY idcliente ORDER BY idcliente;

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
SELECT data_pedido, COUNT(idpedido) 
FROM pedido 
WHERE data_pedido BETWEEN '2008-04-15' AND '2008-04-25'
GROUP BY data_pedido;

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
SELECT idpedido, SUM(valor) FROM pedido GROUP BY idpedido HAVING SUM(valor) > 1000;

-- 31. A quantidade de microcomputadores vendida.
SELECT idproduto, COUNT(idpedido) FROM pedido_produto WHERE idproduto = 1 GROUP BY idproduto;

-- 32. A quantidade de produtos vendida agrupado por produto.
SELECT idproduto, COUNT(idpedido) FROM pedido_produto  GROUP BY idproduto;

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
SELECT idpedido, SUM(valor_unitario) FROM pedido_produto GROUP BY idpedido;

-- 34. A quantidade de produtos agrupados por pedido.
SELECT idpedido, COUNT(idproduto) FROM pedido_produto GROUP BY idpedido;

-- 35. O somatório do valor total de todos os produtos do pedido.
SELECT SUM(valor_unitario) FROM pedido_produto;

-- 36. A média dos produtos do pedido 6.
SELECT idpedido, AVG(valor_unitario) 
FROM pedido_produto 
WHERE idpedido = 6 
GROUP BY idpedido;

-- 37. O valor do maior produto do pedido.
SELECT MAX(valor_unitario) FROM pedido_produto;

-- 38. O valor do menor produto do pedido.
SELECT MIN(valor_unitario) FROM pedido_produto;

-- 39. O somatório da quantidade de produtos por pedido.
SELECT idpedido, COUNT(idproduto) FROM pedido_produto GROUP BY idpedido;

-- 40. O somatório da quantidade de todos os produtos do pedido.
SELECT COUNT(idproduto) FROM pedido_produto;