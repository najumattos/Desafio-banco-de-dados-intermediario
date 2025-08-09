CREATE DATABASE Estoque_DB;
GO

USE Estoque_DB;
GO

-----------TABELAS----------------------
CREATE TABLE Produtos(
	id_produto INT PRIMARY KEY IDENTITY,
	nome_produto VARCHAR(200) NOT NULL,
	categoria_produto INT NOT NULL,
);


-------
CREATE TABLE ProdutoCategoria(
	id_categoria INT PRIMARY KEY IDENTITY,
	titulo_categoria VARCHAR(200) NOT NULL
);
-------
CREATE TABLE ProdutoEstoque(
	id_produto_estoque INT PRIMARY KEY IDENTITY,
	quantidade_produto INT NOT NULL,
	produto_estoque INT NOT NULL
);

--------
CREATE TABLE Clientes(
	id_cliente INT PRIMARY KEY IDENTITY,
	titulo_cliente VARCHAR(4),
	primeiro_nome VARCHAR(10) NOT NULL,
	segundo_nome VARCHAR(10),
	sobrenome_cliente VARCHAR(10) NOT NULL
);
GO
-------------FIM-TABELAS--------------------------


-----------FKS------------
ALTER TABLE ProdutoEstoque 
				ADD CONSTRAINT fk_produto_estoque FOREIGN KEY (produto_estoque) REFERENCES Produtos (id_produto)
---------
ALTER TABLE Produtos 
				ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (categoria_produto) REFERENCES ProdutoCategoria (id_categoria)
GO
-----------FIM-FKS-------------

------------CLIENTES------------------------------------------------------------------
INSERT INTO Clientes (titulo_cliente, primeiro_nome, segundo_nome, sobrenome_cliente)
VALUES (NULL, 'Ana', 'Julia', 'Mattos');
--------
INSERT INTO Clientes (titulo_cliente, primeiro_nome, segundo_nome, sobrenome_cliente)
VALUES ('Sra.', 'Maria', 'Joaquina', 'Medsen');
--------
INSERT INTO Clientes (titulo_cliente, primeiro_nome, segundo_nome, sobrenome_cliente)
VALUES ('Sr.', 'Ozzy', NULL, 'Osbourne');
GO
-------------FIM-CLIENTES---------------------------------------------------------------------


-------------CATEGORIAS----------------------------------
INSERT INTO ProdutoCategoria (titulo_categoria)
VALUES ('Roupas');
INSERT INTO ProdutoCategoria (titulo_categoria)
VALUES ('Calçados');
INSERT INTO ProdutoCategoria (titulo_categoria)
VALUES ('Enxoval');
GO
-------------FIM-CATEGORIAS----------------------------------



-------------PRODUTOS------------------------------------
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Calça', 1);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Blusa', 1);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Vestido', 1);

INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Tênis', 2);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Sapatilha', 2);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Chinelo', 2);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Bota', 2);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Rasteirinha', 2);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Sandália', 2);

INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Toalha', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Lençol', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Fronha', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Edredom', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Manta', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Travesseiro', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Mosqueteiro', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Naninha', 3);
INSERT INTO Produtos (nome_produto, categoria_produto)
VALUES ('Colchão', 3);
GO
-------------FIM-PRODUTOS------------------------------------


---------------ESTOQUE----------------------------------
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (10, 1); --10 calças
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (15, 2); --15 Blusas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (8, 3); --8 Vestidos

INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (27, 4); --27 Tênis
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (3, 5); --3 Sapatilhas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (6, 6); --6 Chinelos
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (4, 7); --4 Botas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (0, 8); --0 Rasteirinhas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (3, 9); --3 Sandálias

INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (5, 10); --5 Toalhas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (9, 11); --9 Lençõis
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (13, 12); --13 Fronhas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (2, 13); --2 Edredons
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (7, 14); --7 Mantas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (1, 15); --1 Travesseiro
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (1, 16); --1 Mosqueteiro
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (2, 17); --2 Naninhas
INSERT INTO ProdutoEstoque (quantidade_produto, produto_estoque)
VALUES (0, 18); --0 Colchões
SELECT * FROM Produtos
--------------FIM-ESTOQUE-------------------------------