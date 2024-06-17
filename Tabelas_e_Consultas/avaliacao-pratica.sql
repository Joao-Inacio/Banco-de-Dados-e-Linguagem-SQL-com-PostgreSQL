-- Active: 1714994625333@@127.0.0.1@5432@biblioteca

-- 1. Crie um banco de dados chamado BIBLIOTECA.
CREATE DATABASE biblioteca
WITH
OWNER = postgres
ENCODING = 'UTF8'
CONNECTION LIMIT = -1
TEMPLATE = template0;

-- 2. Crie uma tabela chamada EDITORA, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdEditora | Inteiro, não nulo, chave primária e auto incremento 
-- Nome | Caractere, não nulo e único
CREATE TABLE editora (
    ideditora SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL UNIQUE,
    -- Primary key
    CONSTRAINT pk_idt_idideditora PRIMARY KEY (ideditora)
);

-- 3. Insira os dados abaixo na tabela EDITORA. 
-- Nome 
-- Bookman 
-- Edgard Blusher 
-- Nova Terra 
-- Brasport 

INSERT INTO editora (nome) VALUES ('Bookman'), ('Edgard Blusher'), ('Nova Terra'), ('Brasport')

-- Visualizando a tabela
SELECT * FROM editora;

-- 4. Crie uma tabela chamada CATEGORIA, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdCategoria | Inteiro, não nulo, chave primária e auto incremento
-- Nome |  Caractere, não nulo e único 
CREATE TABLE categoria (
    idcategoria SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL UNIQUE,
    CONSTRAINT pk_ctg_idcategoria PRIMARY KEY (idcategoria)
);

-- 5. Insira os dados abaixo na tabela CATEGORIA. 
-- Nome 
-- Banco de Dados 
-- HTML 
-- Java 
-- PHP 
INSERT INTO categoria (nome) VALUES ('Banco de Dados'), ('HTML'), ('Java'), ('PHP');

-- Visualizando a tabela
SELECT * FROM categoria;

-- 6. Crie uma tabela chamada AUTOR, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdAutor | Inteiro, não nulo, chave primária e auto incremento 
-- Nome | Caractere e não nulo 
CREATE TABLE autor (
    idautor SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT pk_atr_idautor PRIMARY KEY (idautor)
);

-- 7. Insira os dados abaixo na tabela AUTOR. 
-- Nome 
-- Waldemar Setzer 
-- Flávio Soares 
-- John Watson 
-- Rui Rossi dos Santos 
-- Antonio Pereira de Resende 
-- Claudiney Calixto Lima 
-- Evandro Carlos Teruel 
-- Ian Graham 
-- Fabrício Xavier 
-- Pablo Dalloglio 
INSERT INTO autor (nome) VALUES ('Waldemar Setzer'), ('Flávio Soares'), ('John Watson'), 
('Rui Rossi dos Santos'), ('Antonio Pereira de Resende'), ('Claudiney Calixto Lima'),
('Evandro Carlos Teruel'), ('Ian Graham'), ('Fabrício Xavier'), ('Pablo Dalloglio');

-- Visualizando a tabela
SELECT * FROM autor;

-- 8. Crie uma tabela chamada LIVRO, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdLivro | Inteiro, não nulo, chave primária e auto incremento 
-- IdEditora | Inteiro, não nulo e chave estrangeira para a tabela EDITORA 
-- IdCategoria | Inteiro, não nulo e chave estrangeira para a tabela CATEGORIA 
-- Nome | Caractere, não nulo e único
CREATE TABLE livro (
    idlivro SERIAL NOT NULL,
    ideditora INTEGER NOT NULL,
    idcategoria INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT pk_lvr_idlivro PRIMARY KEY (idlivro),
    CONSTRAINT fk_idt_ideditora FOREIGN KEY (ideditora) REFERENCES editora (ideditora) ON DELETE CASCADE,
    CONSTRAINT fk_ctg_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria (idcategoria) ON DELETE CASCADE
);

-- 9. Insira os dados abaixo na tabela LIVRO. 
-- IdEditora | IdCategoria |Nome 
-- Edgard Blusher | Banco de Dados | Banco de Dados – 1 Edição 
-- Bookman | Banco de Dados | Oracle DataBase 11G Administração 
-- Nova Terra | Java | Programação de Computadores em Java 
-- Brasport | Java | Programação Orientada a Aspectos em Java 
-- Brasport | HTML | HTML5 – Guia Prático 
-- Nova Terra | HTML | XHTML: Guia de Referência para Desenvolvimento na Web 
-- Bookman | PHP | PHP para Desenvolvimento Profissional 
-- Edgard Blusher | PHP | PHP com Programação Orientada a Objetos 
INSERT INTO livro (ideditora, idcategoria, nome) VALUES (2, 1, 'Banco de Dados – 1 Edição'), (1, 1, 'Oracle DataBase 11G Administração'), (3, 3, 'Programação de Computadores em Java'), (4, 3, 'Programação Orientada a Aspectos em Java'), (4, 2, 'HTML5 – Guia Prático'), (3, 2, 'XHTML: Guia de Referência para Desenvolvimento na Web'), (1, 4, 'PHP para Desenvolvimento Profissional'), (2, 4, 'PHP com Programação Orientada a Objetos');

-- Visualizando a tabela
SELECT * FROM livro;

-- 10. Crie uma tabela chamada LIVRO_AUTOR, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdLivro | Inteiro, não nulo e chave estrangeira para a tabela LIVRO 
-- IdAutor | Inteiro, não nulo e chave estrangeira para a tabela AUTOR 
-- Chave primária composta com os campos IdLivro e IdAutor 
CREATE TABLE livro_autor (
    idlivro INTEGER NOT NULL,
    idautor INTEGER NOT NULL,
    CONSTRAINT pk_idlivro_idautor PRIMARY KEY (idlivro, idautor),
    CONSTRAINT fk_lvr_idlivro FOREIGN KEY (idlivro) REFERENCES livro (idlivro) ON DELETE CASCADE,
    CONSTRAINT fk_atr_idautor FOREIGN KEY (idautor) REFERENCES autor (idautor) ON DELETE CASCADE
);

-- 11. Insira os dados abaixo na tabela LIVRO_AUTOR. 
-- IdLivro | IdAutor 
-- Banco de Dados – 1 Edição | Waldemar Setzer 
-- Bando de Dados – 1 Edição | Flávio Soares 
-- Oracle DataBase 11G Administração | John Watson 
-- Programação de Computadores em Java | Rui Rossi dos Santos 
-- Programação Orientada a Aspectos em Java | Antonio Pereira de Resende 
-- Programação Orientada a Aspectos em Java | Claudiney Calixto Lima 
-- HTML5 – Guia Prático | Evandro Carlos Teruel 
-- XHTML: Guia de Referência para Desenvolvimento na Web | Ian Graham 
-- PHP para Desenvolvimento Profissional | Fabrício Xavier 
-- PHP com Programação Orientada a Objetos | Pablo Dalloglio 
INSERT INTO livro_autor (idlivro, idautor) VALUES (1, 1), (1,2), (2, 3), (3, 4), (4, 5), (4, 6), (5, 7), (6, 8), (7, 9), (8, 10);

-- Visualizando a tabela
SELECT * FROM livro_autor;

-- 12. Crie uma tabela chamada ALUNO, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdAluno | Inteiro, não nulo, chave primária e auto incremento 
-- Nome | Caractere e não nulo 
CREATE TABLE aluno(
    idaluno SERIAL NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT pk_aln_idaluno PRIMARY KEY (idaluno)
);

-- 13. Insira os dados abaixo na tabela ALUNO. 
-- Nome 
-- Mario 
-- João 
-- Paulo 
-- Pedro 
-- Maria 
INSERT INTO aluno (nome) VALUES ('Mario'), ('João'), ('Paulo'), ('Pedro'), ('Maria');

-- Visualizando a tabela
SELECT * FROM aluno;

-- 14. Crie uma tabela chamada EMPRESTIMO, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdEmprestimo | Inteiro, não nulo, chave primária e auto incremento 
-- IdAluno | Inteiro, não nulo e chave estrangeira para a tabela ALUNO 
-- Data_Emprestimo | Data, não nulo e valor padrão com a data atual do sistema 
-- Data_Devolucao | Data e não nulo 
-- Valor | Decimal e não nulo 
-- Devolvido | Caractere e não nulo (somente um caractere) 
CREATE TABLE emprestimo (
    idemprestimo SERIAL NOT NULL,
    idaluno INTEGER NOT NULL,
    data_emprestimo DATE DEFAULT CURRENT_DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    devolvido CHAR(1) NOT NULL,
    CONSTRAINT pk_ept_idemprestimo PRIMARY KEY (idemprestimo),
    CONSTRAINT fk_aln_idaluno FOREIGN KEY (idaluno) REFERENCES aluno (idaluno) ON DELETE CASCADE
);

-- 15. Insira os dados abaixo na tabela EMPRESTIMO. 
-- IdAluno | Emprestimo | Devolucao | Valor | Devolvido 
-- Mario | 02/05/2012 | 12/05/2012 | 10,00 | S 
-- Mario | 23/04/2012 | 03/05/2012 | 5,00 | N 
-- João | 10/05/2012 | 20/05/2012 | 12,00 | N 
-- Paulo | 10/05/2012 | 20/05/2012 | 8,00 | S 
-- Pedro | 05/05/2012 | 15/05/2012 | 15,00 | N 
-- Pedro | 07/05/2012 | 17/05/2012 | 20,00 | S 
-- Pedro | 08/05/2012 | 18/05/2012 | 5,00 | S 
INSERT INTO emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES (1, '2012-05-02', '2012-05-12', 10, 'S'), (1, '2012-04-23', '2012-05-03', 5, 'N'), (2, '2012-05-10', '2012-05-20', 12, 'N'), (3, '2012-05-10', '2012-05-20', 8, 'S'), (4, '2012-05-05', '2012-05-15', 15, 'N'), (4, '2012-05-07', '2012-05-17', 20, 'S'), (4, '2012-05-08', '2012-05-18', 5, 'S');

-- Visualizando a tabela
SELECT * FROM emprestimo;

-- 16. Crie uma tabela chamada EMPRESTIMO_LIVRO, de acordo com os dados abaixo: 
-- Campo | Observações 
-- IdEmprestimo | Inteiro, não nulo, chave estrangeira para a tabela EMPRESTIMO 
-- IdLivro | Inteiro, não nulo e chave estrangeira para a tabela LIVRO 
-- Chave primária composta com os campos IdEmprestimo e IdLivro 
CREATE TABLE emprestimo_livro (
    idemprestimo INTEGER NOT NULL,
    idlivro INTEGER NOT NULL,
    CONSTRAINT pk_idemprestimo_idlivro PRIMARY KEY (idemprestimo, idlivro),
    CONSTRAINT fk_ept_idemprestimo FOREIGN KEY (idemprestimo) REFERENCES emprestimo (idemprestimo) ON DELETE CASCADE,
    CONSTRAINT fk_lvr_idlivro FOREIGN KEY (idlivro) REFERENCES livro (idlivro) ON DELETE CASCADE
);

-- 17. Insira os dados abaixo na tabela EMPRESTIMO_LIVRO. 
-- IdEmpréstimo | IdLivro 
-- Primeiro empréstimo do Mário | Banco de Dados – 1 Edição 
-- Segundo empréstimo do Mário | Programação Orientada a Aspectos em Java 
-- Segundo empréstimo do Mário | Programação de Computadores em Java 
-- Empréstimo do João | Oracle DataBase 11G Administração 
-- Empréstimo do João | PHP para Desenvolvimento Profissional 
-- Empréstimo do Paulo | HTML5 – Guia Prático 
-- Primeiro empréstimo do Pedro | Programação Orientada a Aspectos em Java 
-- Segundo empréstimo do Pedro | XHTML: Guia de Referência para Desenvolvimento na Web 
-- Segundo empréstimo do Pedro | Bando de Dados – 1 Edição 
-- Terceiro empréstimo do Pedro | PHP com Programação Orientada a Objetos 
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (2, 1), (1, 4), (1, 3), (3, 2), (3, 7), (4, 5), (5, 4), (6, 6), (6, 1), (7, 8);

-- Visualizando a tabela
SELECT * FROM emprestimo_livro;

-- 18. Crie os seguintes índices: 
-- Tabela Campo
-- Emprestimo Emprestimo
-- Emprestimo Devolução 
CREATE INDEX idx_ept_emprestimo ON emprestimo (idemprestimo);
CREATE INDEX idx_ept_devolucao ON emprestimo (devolvido);

-- CONSULTAS SIMPLES 

-- 19. O nome dos autores em ordem alfabética. 
SELECT nome FROM autor ORDER BY nome;

-- 20. O nome dos alunos que começam com a letra P. 
SELECT nome FROM aluno WHERE nome LIKE 'P%';

-- 21. O nome dos livros da categoria Banco de Dados ou Java.
SELECT nome FROM livro WHERE idcategoria IN (1, 3);

-- 22. O nome dos livros da editora Bookman. 
SELECT nome FROM livro WHERE ideditora = 1;

-- 23. Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
SELECT * FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';
-- 24. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
SELECT * FROM emprestimo WHERE data_emprestimo NOT BETWEEN '2012-05-05' AND '2012-05-10';
-- 25. Os empréstimos que os livros já foram devolvidos.
SELECT * FROM emprestimo WHERE devolvido = 'S';
