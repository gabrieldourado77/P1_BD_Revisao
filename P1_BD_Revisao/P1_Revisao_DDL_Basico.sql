-- Revisão para a P1 - DDL (Data Definition Language)
-- Comandos Básicos

-- Criar um banco de dados
CREATE DATABASE nome_banco;

-- Utilizar um banco criado
USE nome_banco;

-- Excluir um banco
DROP DATABASE nome_banco;

-- Criar uma tabela
CREATE TABLE nome_tabela(
	id_tabela int PRIMARY KEY IDENTITY(1,1),
	nome varchar(50) NOT NULL
);

-- Excluir uma tabela
DROP TABLE nome_tabela;


-- Adicionar uma coluna
ALTER TABLE nome_tabela
ADD email varchar(80) NOT NULL;

-- Alterar uma coluna
ALTER TABLE nome_tabela
ALTER COLUMN email varchar(50) NOT NULL;


-- Criar uma chave estrangeira:

-- 1º - Informe a coluna da tabela, que vai se tornar uma chave estrangeira
FOREIGN KEY(nome_coluna) 
-- 2º - Coloque o nome da outra tabela e da coluna dela, que servirão de referência
REFERENCES outra_tabela(nome_coluna);
-- 3º - O comando completo fica:
FOREIGN KEY(nome_coluna) REFERENCES outra_tabela(nome_coluna); 


-- Adicionar uma chave estrangeira, numa tabela que já foi criada:

-- 1º - Use o comando ALTER TABLE com o ADD
ALTER TABLE nome_tabela ADD
-- 2º - Informe a coluna da tabela, que vai se tornar uma chave estrangeira
FOREIGN KEY(nome_coluna) 
-- 3º - Coloque o nome da outra tabela e da coluna dela, que servirão de referência
REFERENCES outra_tabela(nome_coluna);
-- 4º - O comando completo fica:
ALTER TABLE nome_tabela 
ADD FOREIGN KEY(nome_coluna) REFERENCES outra_tabela(nome_coluna);