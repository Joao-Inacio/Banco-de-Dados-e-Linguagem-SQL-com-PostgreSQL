
# O objetivo deste exercício é alterar os tipos de dados dos atributos de todas as tabelas, considerando 
# os domínios criados anteriormente.

-- Excluído todas as Views para não haver conflitos
DROP VIEW IF EXISTS clientes;

DROP VIEW IF EXISTS municipios;

DROP VIEW IF EXISTS pedidos;

DROP VIEW IF EXISTS pedidos_produtos;

DROP VIEW IF EXISTS produtos;

DROP VIEW IF EXISTS transportadoras;

-- Alterando os tipos de dados com os Domínios 

ALTER TABLE bairro ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE cliente ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE cliente ALTER COLUMN cpf TYPE nome_curto;

ALTER TABLE cliente ALTER COLUMN rg TYPE nome_curto;

ALTER TABLE cliente ALTER COLUMN data_nascimento TYPE datas;

-- Criando um domínio para a coluna gênero
CREATE DOMAIN uma_opcao CHAR(1);

ALTER TABLE cliente ALTER COLUMN genero TYPE uma_opcao;

ALTER TABLE cliente ALTER COLUMN logradouro TYPE nome_medio;

ALTER TABLE cliente ALTER COLUMN numero TYPE codigo;

-- Criando um domínio para a coluna testo
CREATE DOMAIN textos AS TEXT;

ALTER TABLE cliente ALTER COLUMN observacoes TYPE textos;






