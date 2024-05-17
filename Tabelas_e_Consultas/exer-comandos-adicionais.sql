-- Active: 1714994625333@@127.0.0.1@5432@pedido

-- 1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT * FROM cliente;
SELECT
    nome,
    CASE
        WHEN data_nascimento IS NULL THEN 'Não informado'
        ELSE EXTRACT(MONTH FROM data_nascimento)::TEXT
    END AS Mes_de_Nascimento
FROM
    cliente;

-- 2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
    nome,
    CASE
        WHEN data_nascimento IS NULL THEN 'Não informado'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 1 THEN 'Janeiro'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 2 THEN 'Fevereiro'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 3 THEN 'Março'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 4 THEN 'Abril'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 5 THEN 'Maio'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 6 THEN 'Junho'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 7 THEN 'Julho'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 8 THEN 'Agosto'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 9 THEN 'Setembro'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 10 THEN 'Outubro'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 11 THEN 'Novembro'
        WHEN EXTRACT(MONTH FROM data_nascimento) = 12 THEN 'Dezembro'
        ELSE EXTRACT(MONTH FROM data_nascimento):: TEXT
    END AS Mes_de_Nascimento
FROM
    cliente;

-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
    nome,
    CASE
        WHEN data_nascimento IS NULL THEN 'Não informado'
        ELSE EXTRACT(YEAR FROM data_nascimento)::TEXT
    END AS ano_de_nascimento
FROM
    cliente;
-- 4. O caractere 5 até o caractere 10 de todos os municípios.
SELECT * FROM municipio;
SELECT
    nome,
    SUBSTRING(nome FROM 5 FOR 5)
FROM
    municipio

-- 5. O nome de todos os municípios em letras maiúsculas.
SELECT
    nome,
    UPPER(nome)
FROM
    municipio

-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
SELECT
    nome,
    CASE genero
        WHEN 'F' THEN 'Feminino'
        WHEN 'M' THEN 'Masculino'
    ELSE 'Outros'
    END AS genero
FROM
    cliente;

-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
SELECT
    nome,
    valor,
    CASE
        WHEN valor > 500 THEN 'Acima de 500'
        ELSE 'Abaixo de 500'
    END AS classificacao_valor
FROM 
    produto;
