USE Estoque_DB;
GO

-- 1. Nome do Produto, Categoria, quantidadeEstoque
SELECT  C.titulo_categoria, P.nome_produto, E.quantidade_produto FROM Produtos P
INNER JOIN ProdutoCategoria C ON C.id_categoria = P.categoria_produto
INNER JOIN ProdutoEstoque E ON E.id_produto_estoque = P.id_produto;
GO


-- 2. Excluir Todos os itens da Categoria Roupas(1)
SELECT P.nome_produto, P.categoria_produto, E.quantidade_produto  FROM Produtos P
INNER JOIN ProdutoEstoque E ON E.id_produto_estoque = P.id_produto
WHERE  P.categoria_produto = 1;

		-- WHERE categoria_produto = 1; --Categoria Roupa
		--da conflito com a tabela ProdutoEstoque pois estão relacionadas
		--apagar nos dois lugares de forma individual??
DELETE FROM Produtos --e ProdutoEstoque
WHERE categoria_produto = 1;


-- 3. TABELA CLIENTES: Concatenar titulo + primeiroNome, segundoNome, sobrenome
SELECT titulo_cliente, primeiro_nome, segundo_nome, sobrenome_cliente,
	CASE
		WHEN titulo_cliente IS NULL THEN CONCAT(primeiro_nome, ' ', segundo_nome, ' ', sobrenome_cliente) 
		WHEN segundo_nome   IS NULL THEN CONCAT(titulo_Cliente, ' ', primeiro_nome, ' ', sobrenome_cliente) 
		ELSE CONCAT(titulo_Cliente, ' ', primeiro_nome, ' ', segundo_nome, ' ', sobrenome_cliente) 
	END AS nome_completo FROM Clientes


