-- Revisão para P1 - DDL (Data Definition Language)
-- Views (tabelas virtuais)

-- Criar uma view
CREATE VIEW v_Exemplo AS
	SELECT * FROM nome_tabela;
-- Essa view tem um SELECT, que exibe tudo, que está na tabela "nome_tabela"

-- Chamar uma view
SELECT v_Exemplo;

-- Alterar uma view
ALTER VIEW v_Exemplo AS
	-- Comando SELECT, que será colocado na view

-- Excluir uma view
DROP VIEW v_Exemplo;


