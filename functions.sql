USE Estoque_DB;
GO
--testando função para retornar a quantidade total de produtos por categoria
CREATE FUNCTION TotalCategoria(@cID AS NUMERIC(6))
RETURNS NVARCHAR(100)
AS
BEGIN

	DECLARE @NomeCategoria NVARCHAR(50);
	DECLARE @SaldoCategoria NUMERIC(6);	
	DECLARE @msgFinal NVARCHAR(100);

	SELECT @NomeCategoria = categoria	
	FROM ProdutoCategoria 

	--SELECT @SaldoCategoria --somar todos os itens por categoria

	SET @msgFinal = CONCAT('Total de ', @NomeCategoria, ': ', @SaldoCategoria);
	RETURN @msgFinal;
END
GO

SELECT dbo.TotalCategoria(C.)
FROM ProdutoCategoria
--função
CREATE FUNCTION ConsultaSaldo(@pID AS NUMERIC(6))
RETURNS NVARCHAR(100)
AS
BEGIN
	--IF @pID IS NULL RETURN 'Produto (ID) não foi informado...';

	DECLARE @Saldo NUMERIC(6);
	DECLARE @NomeProduto NVARCHAR(50);
	DECLARE @msgFinal NVARCHAR(100);

	SELECT @Saldo = quantidade FROM ProdutoEstoque where id_produto_estoque = @pID;
	SELECT @NomeProduto = nome FROM Produtos WHERE id_produto = @pID;

	--Retorna o Salgado
	SET @msgFinal = CONCAT(@Saldo, ' unidades de ', @NomeProduto);
	RETURN @msgFinal;
END
GO

-------------
SELECT dbo.ConsultaSaldo(P.id_produto) AS 'Saldo'
FROM Produtos P

