USE Estoque_DB;
GO

-- 1. Nome do Produto, Categoria, quantidadeEstoque
SELECT  C.categoria, P.nome, E.quantidade FROM Produtos P
INNER JOIN ProdutoCategoria C ON C.id_categoria = P.categoria
INNER JOIN ProdutoEstoque E ON E.id_produto_estoque = P.id_produto;
GO


-- 2. Excluir Todos os itens da Categoria Roupas(1)
SELECT P.nome, P.categoria, E.quantidade  FROM Produtos P
INNER JOIN ProdutoEstoque E ON E.id_produto_estoque = P.id_produto
WHERE  P.categoria = 1;

		-- WHERE categoria_produto = 1; --Categoria Roupa
		--da conflito com a tabela ProdutoEstoque pois estão relacionadas
		--apagar nos dois lugares de forma individual??
DELETE FROM Produtos --e ProdutoEstoque
WHERE categoria = 1;


-- 3. TABELA CLIENTES: Concatenar titulo + primeiroNome, segundoNome, sobrenome
SELECT titulo, primeiro_nome, segundo_nome, sobrenome,
	CASE
		WHEN titulo IS NULL THEN CONCAT(primeiro_nome, ' ', segundo_nome, ' ', sobrenome) 
		WHEN segundo_nome   IS NULL THEN CONCAT(titulo, ' ', primeiro_nome, ' ', sobrenome) 
		ELSE CONCAT(titulo, ' ', primeiro_nome, ' ', segundo_nome, ' ', sobrenome) 
	END AS nome_completo FROM Clientes


