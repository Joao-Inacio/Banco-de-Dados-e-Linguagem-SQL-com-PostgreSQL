-- Active: 1710766883456@@127.0.0.1@5432@pedido

-- 1. Somente o nome de todos os vendedores em ordem alfabética.
SELECT nome FROM vendedor ORDER BY nome;

-- 2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
SELECT * FROM produto WHERE valor > 200 ORDER BY valor;

-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
SELECT nome, valor AS preco_original, valor * 1.1 AS valor_reajustado FROM produto ORDER BY nome;

-- 4. Os municípios do Rio Grande do Sul.
SELECT * FROM municipio WHERE iduf = 5;

-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
SELECT * FROM pedido WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25' ORDER BY valor;

-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
SELECT * FROM pedido WHERE valor BETWEEN 1000 AND 1500;

-- 7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
SELECT * FROM pedido WHERE valor NOT BETWEEN 100 AND 500;

-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
SELECT * FROM pedido WHERE idvendedor = 1 ORDER BY valor DESC;

-- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
SELECT * FROM cliente WHERE nome = 'Manoel';

-- 10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
SELECT * FROM pedido WHERE idcliente = 15 AND idvendedor = 1;

-- 11. Os pedidos que foram transportados pela transportadora União Transportes.
SELECT * FROM pedido WHERE idtransportadora = 2;

-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
SELECT * FROM pedido WHERE idvendedor = 5 OR idvendedor = 7;

-- 13. Os clientes que moram em União da Vitória ou Porto União.
SELECT * FROM cliente WHERE idmunicipio = 9 OR idmunicipio = 1;

-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.
SELECT * FROM cliente WHERE idmunicipio <> 9 AND idmunicipio <> 1;

-- 15. Os clientes que não informaram o logradouro.
SELECT * FROM cliente WHERE logradouro IS NULL;

-- 16. Os clientes que moram em avenidas.
SELECT * FROM cliente WHERE logradouro LIKE 'Av%';

-- 17. Os vendedores que o nome começa com a letra S.
SELECT * FROM vendedor WHERE nome LIKE 'S%';

-- 18. Os vendedores que o nome termina com a letra A.
SELECT * FROM vendedor WHERE nome LIKE '%a';

-- 19. Os vendedores que o nome não começa com a letra A.
SELECT * FROM vendedor WHERE nome NOT LIKE 'A%';

-- 20. Os municípios que começam com a letra P e são de Santa Catarina.
SELECT * FROM municipio WHERE nome LIKE 'P%' AND iduf = 1;

-- 21. As transportadoras que informaram o endereço.
SELECT * FROM transportadora WHERE logradouro IS NOT NULL AND numero IS NOT NULL;

-- 22. Os itens do pedido 01.
SELECT * FROM pedido_produto WHERE idpedido = 1;

-- 23. Os itens do pedido 06 ou do pedido 10.
SELECT * FROM pedido_produto WHERE idpedido = 6 OR idpedido = 10;