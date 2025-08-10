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
DELETE FROM Produtos ProdutoEstoque
WHERE Produtos.categoria_produto = 1;

		-- WHERE categoria_produto = 1; --Categoria Roupa
		--da conflito com a tabela ProdutoEstoque pois estão relacionadas
		--apagar nos dois lugares de forma individual??
DELETE FROM Produtos --e ProdutoEstoque
WHERE categoria = 1;


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


