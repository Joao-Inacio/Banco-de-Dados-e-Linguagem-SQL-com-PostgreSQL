-- Active: 1710766883456@@127.0.0.1@5432@pedido
-- Exercícios – comandos update e delete
-- 1. Insira os dados abaixo na tabela de clientes
INSERT INTO cliente (
    idcliente, nome, cpf, rg, data_nascimento, genero, 
    profissao, nacionalidade, logradouro, numero,
    complemento, bairro, municipio, uf
)
VALUES (
    16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F',
    'Empresário', NULL, NULL, NULL,
    NULL, NULL, 'Florianópolis', 'PR'
);

INSERT INTO cliente (
    idcliente, nome, cpf, rg, data_nascimento, genero, 
    profissao, nacionalidade, logradouro, numero,
    complemento, bairro, municipio, uf
)
VALUES (
    17, 'Getúlio', NULL, '4631', NULL, 'F',
    'Estudante', 'Brasileira', 'Rua Central', '343',
    'Apartamento', 'Centro', 'Curitiba', 'SC'
);

INSERT INTO cliente (
    idcliente, nome, cpf, rg, data_nascimento, genero, 
    profissao, nacionalidade, logradouro, numero,
    complemento, bairro, municipio, uf
)
VALUES (
    18, 'Sandra', NULL, NULL, NULL, 'F',
    'Professor', 'Italiana', NULL, '12',
    'Bloca A', NULL, NULL, NULL
);

-- 2. Altere os dados do cliente Maicon
-- a. O CPF para 45390569432
-- b. O gênero para M
-- c. A nacionalidade para Brasileira
-- d. O UF para SC

UPDATE
    cliente 
SET
    cpf = '45390569432',
    genero = 'M', 
    nacionalidade = 'Brasileira',
    uf = 'SC'
WHERE
    idcliente = 16;

-- 3. Altere os dados do cliente Getúlio
-- a. A data de nascimento para 01/04/1978
-- b. O gênero para M

UPDATE
    cliente 
SET
    data_nascimento = '1978-04-01',
    genero = 'M'
WHERE
    idcliente = 17;


-- 4. Altere os dados da cliente Sandra
-- a. O gênero para F
-- b. A profissão para Professora
-- c. O número para 123

UPDATE
    cliente 
SET
    genero = 'F',
    profissao = 'Professora',
    numero = '123'
WHERE
    idcliente = 18;

-- 5. Apague o cliente Maicon
DELETE FROM cliente WHERE idcliente = 16;

-- 6. Apague a cliente Sandra
DELETE FROM cliente WHERE idcliente = 18;