

# Usuários e permissões

CREATE ROLE gerente;
CREATE ROLE estagiario;

-- Atribuído a função de seleciona e inseri dados nas tabelas
GRANT SELECT, INSERT ON
    bairro,
    cliente,
    complemento,
    fornecedor,
    municipio,
    nacionalidade,
    pedido,
    pedido_produto,
    produto,
    profissao,
    transportadora,
    uf,
    vendedor
TO
    gerente
WITH GRANT OPTION;

-- Atribuído a função de seleciona dados nas tabelas
GRANT SELECT ON
    clientes,
    pedidos
TO
    estagiario;

-- Criando o login
CREATE ROLE maria LOGIN PASSWORD '1234' IN ROLE gerente;

CREATE ROLE pedro LOGIN PASSWORD '3210' IN ROLE estagiario;

-- Dando acesso as sequencia ao gerente
GRANT ALL ON ALL SEQUENCES IN SCHEMA
    public
TO
    gerente;

# REVOKE para remover as permissões 

