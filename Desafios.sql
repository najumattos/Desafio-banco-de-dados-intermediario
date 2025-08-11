USE Estoque_DB;
GO

-- 1. Nome do Produto, Categoria, quantidadeEstoque
SELECT  C.categoria  AS Categoria,
		P.nome		 AS Produto,
		E.quantidade AS Saldo
FROM Produtos P
	INNER JOIN ProdutoCategoria C ON C.id_categoria = P.categoria
	INNER JOIN ProdutoEstoque E ON E.id_produto_estoque = P.id_produto;
GO

-- 2. Excluir Todos os itens da Categoria Roupas(1)

--Excluir Produtos da categoria "ROUPAS"(1) da tabela ProdutoEstoque
DELETE FROM ProdutoEstoque
WHERE produto IN (
	SELECT *
	FROM Produtos
	WHERE categoria = 1

)
--Excluir Produtos da categoria "ROUPAS"
DELETE FROM ProdutoCategoria 
WHERE  categoria = 1;		
SELECT * FROM Produtos	
-- 3. TABELA CLIENTES: Concatenar titulo + primeiroNome, segundoNome, sobrenome
SELECT titulo		 AS Título,
	   primeiro_nome AS 'Primeiro Nome',
	   segundo_nome  AS 'Segundo Nome',
	   sobrenome	 AS 'Sobrenome',
	CASE
		WHEN titulo IS NULL
		THEN CONCAT(primeiro_nome, ' ', segundo_nome, ' ', sobrenome) 

		WHEN segundo_nome IS NULL
		THEN CONCAT(titulo, ' ', primeiro_nome, ' ', sobrenome) 

		ELSE CONCAT(titulo, ' ', primeiro_nome, ' ', segundo_nome, ' ', sobrenome) 
	END AS 'Nome Completo'
	FROM Clientes


