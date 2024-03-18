-- Active: 1710766883456@@127.0.0.1@5432@pedido
INSERT INTO cliente (
    idcliente, nome, cpf, rg, data_nascimento, genero, 
    profissao, nacionalidade, logradouro, numero,
    complemento, bairro, municipio, uf
)
VALUES (
    1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M',
    'Estudante', 'Brasileiro', 'Rua Joaquim Nabuco', '23',
    'Casa', 'Cidade Nova', 'Porto União', 'SC'
);

INSERT INTO cliente (
    idcliente, nome, cpf, rg, data_nascimento, genero, 
    profissao, nacionalidade, logradouro, numero,
    complemento, bairro, municipio, uf
)
VALUES (
    2, 'Geraldo', '99887766554', '56565', '1987-01-04', 'M',
    'Engenheiro', 'Brasileiro', 'Rua das Lima', '200',
    'Ap', 'Centro', 'Poro Uniao', 'SC'
);