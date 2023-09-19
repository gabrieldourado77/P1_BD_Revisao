-- Revisão para a P1 - DML (Data Manipulation Language)
-- INSERT, SELECT, UPDATE, DELETE, TRUNCATE

-- Inserir dados em uma tabela
INSERT INTO nome_tabela VALUES
('valor 1', 'valor 2');

-- Exibir todos os dados de uma tabela
SELECT * FROM nome_tabela;

-- Exibir os dados de colunas específicas
SELECT nome FROM nome_tabela;

-- Atualizar dados de um registro
UPDATE nome_tabela SET nome_coluna = 'valor';

-- Excluir um registro, através do ID dele 
DELETE FROM nome_tabela WHERE id_tabela = ' ';

-- DELETE - Excluir todos os registros de uma tabela
DELETE FROM nome_tabela;

-- TRUNCATE - Excluir todos os registros de uma tabela
TRUNCATE TABLE nome_tabela;