
-- Exercícios usuários e permissões

-- 1. Crie um novo papel chamado “atendente”
CREATE ROLE atendente;

-- 2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto). O restante do acesso deve estar bloqueado
GRANT SELECT, INSERT ON
    pedido,
    pedido_produto
TO
    atendente
WITH GRANT OPTION;

-- 3. Crie um novo usuário associado ao novo papel
CREATE ROLE carlos LOGIN PASSWORD '0123' IN ROLE atendente;

-- 4. Realize testes para verificar se as permissões foram aplicadas corretamente