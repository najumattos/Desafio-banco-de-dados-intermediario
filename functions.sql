USE Estoque_DB;
GO

CREATE FUNCTION SaldoCategoria(
@cID AS NUMERIC(5))
RETURNS NVARCHAR(100)
AS
BEGIN
	IF @cID IS NULL RETURN 'Informe uma categoria...'; --nao funfa?

	DECLARE @NomeCategoria NVARCHAR(50);
	DECLARE @SaldoCategoria NUMERIC(5);	
	DECLARE @msgFinal NVARCHAR(100);

	--Relaciona o @cID com o nome da categoria
	SELECT @NomeCategoria = C.categoria	
	FROM ProdutoCategoria C
	WHERE C.id_categoria = @cID;

	--Soma todos os itens de acordo com a categoria @cID
	SELECT @SaldoCategoria = SUM(E.quantidade)
	FROM ProdutoEstoque E
	INNER JOIN Produtos P ON E.produto = P.id_produto
	WHERE  P.categoria = @cID

	SET @msgFinal = CONCAT('Total de ', @NomeCategoria, ': ', @SaldoCategoria);
	RETURN @msgFinal;
END
GO

CREATE FUNCTION SaldoProduto(@pID AS NUMERIC(5))
RETURNS NVARCHAR(100)
AS
BEGIN
	IF @pID IS NULL RETURN 'Produto (ID) não foi informado...';--nao funfa?

	DECLARE @Saldo NUMERIC(5);
	DECLARE @NomeProduto NVARCHAR(50);
	DECLARE @msgFinal NVARCHAR(100);

	SELECT @NomeProduto = nome
	FROM Produtos
	WHERE id_produto = @pID;

	SELECT @Saldo = quantidade
	FROM ProdutoEstoque
	where id_produto_estoque = @pID;



	--Retorna o Salgado
	SET @msgFinal = CONCAT(@Saldo, ' unidades de ', @NomeProduto);
	RETURN @msgFinal;
END
GO

--Função para retornar a quantidade total de produtos por categoria
--Essa função retorna o resultado esperado mas de acordo com a quantidade de registros da tabela selecionada
--Qual tabela usar se todas retornam a mesma coisa?
-- GROUP BY, ORDER BY, SELECT?
SELECT dbo.SaldoCategoria(2) AS 'Saldo por Categoria'
FROM ProdutoCategoria 

--Função para retornar a quantidade total de um produto
--Essa função retorna 18x a mesma coisa. (18 é a qtd total de produtos)
--Pq da certo quando eu uso a tabela ProdutoCategoria?
SELECT dbo.SaldoProduto(2) AS 'Saldo por Produto'
FROM ProdutoEstoque

