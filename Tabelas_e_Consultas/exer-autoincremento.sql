-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- 1. Criando sequências para todas as outras tabelas da base de dados

-- a. Cliente
SELECT * FROM cliente;

-- Encontrando o próximo valor de idcliente
SELECT MAX(idcliente) + 1 FROM cliente;

-- Criando uma sequência
CREATE SEQUENCE cliente_id_seq MINVALUE 18;

-- Alterando a tabela para usar a sequência
ALTER TABLE cliente
ALTER idcliente
SET DEFAULT NEXTVAL('cliente_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE cliente_id_seq OWNED BY cliente.idcliente;

-- b. Complemento
SELECT * FROM complemento;

-- Encontrando o próximo valor de idcomplemento
SELECT MAX(idcomplemento) + 1 FROM complemento;

-- Criando uma sequência
CREATE SEQUENCE complemento_id_seq MINVALUE 3;

-- Alterando a tabela para usar a sequência
ALTER TABLE complemento
ALTER idcomplemento
SET DEFAULT NEXTVAL('complemento_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE complemento_id_seq OWNED BY complemento.idcomplemento;

-- c. Fornecedor
SELECT * FROM fornecedor;

-- Encontrando o próximo valor de idfornecedor
SELECT MAX(idfornecedor) + 1 FROM fornecedor;

-- Criando uma sequência
CREATE SEQUENCE fornecedor_id_seq MINVALUE 4;

-- Alterando a tabela para usar a sequência
ALTER TABLE fornecedor
ALTER idfornecedor
SET DEFAULT NEXTVAL('fornecedor_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE fornecedor_id_seq OWNED BY fornecedor.idfornecedor;

-- d. Município
SELECT * FROM municipio;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idmunicipio) FROM municipio;

-- Criando uma sequência
CREATE SEQUENCE municipio_id_seq MINVALUE 9;

-- Alterando a tabela para usar a sequência
ALTER TABLE municipio
ALTER idmunicipio
SET DEFAULT NEXTVAL('municipio_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE municipio_id_seq OWNED BY municipio.idmunicipio;

-- e. Nacionalidade
SELECT * FROM nacionalidade;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idnacionalidade) FROM nacionalidade;

-- Criando uma sequência
CREATE SEQUENCE nacionalidade_id_seq MINVALUE 4;

-- Alterando a tabela para usar a sequência
ALTER TABLE nacionalidade
ALTER idnacionalidade
SET DEFAULT NEXTVAL('nacionalidade_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE nacionalidade_id_seq OWNED BY nacionalidade.idnacionalidade;

-- f. Pedido
SELECT * FROM pedido;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idpedido) FROM pedido;

-- Criando uma sequência
CREATE SEQUENCE pedido_id_seq MINVALUE 15;

-- Alterando a tabela para usar a sequência
ALTER TABLE pedido
ALTER idpedido
SET DEFAULT NEXTVAL('pedido_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE pedido_id_seq OWNED BY pedido.idpedido;

-- g. Pedido produto (verificar se é necessário)
SELECT * FROM produto;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idproduto) + 1 FROM produto;

-- Criando uma sequência
CREATE SEQUENCE produto_id_seq MINVALUE 8;

-- Alterando a tabela para usar a sequência
ALTER TABLE produto
ALTER idproduto
SET DEFAULT NEXTVAL('produto_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE produto_id_seq OWNED BY produto.idproduto;

-- h. Profissão
SELECT * FROM profissao;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idprofissao) + 1 FROM profissao;

-- Criando uma sequência
CREATE SEQUENCE profissao_id_seq MINVALUE 6;

-- Alterando a tabela para usar a sequência
ALTER TABLE profissao
ALTER idprofissao
SET DEFAULT NEXTVAL('profissao_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE profissao_id_seq OWNED BY profissao.idprofissao;

-- i. Transportadora
SELECT * FROM transportadora;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(idtransportadora) + 1 FROM transportadora;

-- Criando uma sequência
CREATE SEQUENCE transportadora_id_seq MINVALUE 3;

-- Alterando a tabela para usar a sequência
ALTER TABLE transportadora
ALTER idtransportadora
SET DEFAULT NEXTVAL('transportadora_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE transportadora_id_seq OWNED BY transportadora.idtransportadora;

-- j. UF
SELECT * FROM uf;

-- Encontrando o próximo valor da tabela ID
SELECT MAX(iduf) + 1 FROM uf;

-- Criando uma sequência
CREATE SEQUENCE uf_id_seq MINVALUE 7;

-- Alterando a tabela para usar a sequência
ALTER TABLE uf ALTER iduf SET DEFAULT NEXTVAL('uf_id_seq');

-- Associando a sequência à coluna
ALTER SEQUENCE uf_id_seq OWNED BY uf.iduf;

-- k. Vendedor