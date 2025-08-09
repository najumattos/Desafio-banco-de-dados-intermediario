# Desafios de Banco de Dados - SQL Server
Este repositório contém os três desafios do curso de Banco de Dados, parte da trilha Backend do Programa de Treinamento FDevs.

## Como Usar

Para Rodar as Consultas
Para executar as consultas, utilize dois scripts:
1. Criação das tabelas e inserção dos dados: *createDB.sql*

2. Consultas dos desafios propostos: *Desafios.sql*

## Desafios
### Desafio 1: Consulta de Produtos
#### Descrição
Recuperar Produto.nome_produto, ProdutoCategoria.titulo_categoria e ProdutoEstoque.quantidade_produto, utilizando INNER JOIN para unir as tabelas.

#### Exemplo de Saída:
| nome_produto | titulo_categoria | quantidade_produto |
| :--- | :--- | :--- |
| TOALHA | ENXOVAL | 5 |
| ... | ... | ... |

### Desafio 2: Excluir Produtos Por Categoria
#### Descrição
Excluir todos os produtos da categoria "Roupas".

#### Produtos a serem excluídos:
| nome_produto | titulo_categoria | quantidade_produto |
| :--- | :--- | :--- |
| CALÇA | ROUPA | 10 |
| BLUSA | ROUPA | 15 |
| VESTIDO | ROUPA | 8 |

### Desafio 3: Concatenar Nome Completo com CONCAT e CASE
#### Descrição
Criar uma coluna *NomeCompleto* concatenando os campos *titulo_cliente, primeiro_nome, segundo_nome e sobrenome_cliente* da tabela **Clientes**. A consulta utiliza **CONCAT** e **CASE** para tratar valores *NULL*, garantindo que não haja espaços extras no resultado.

| titulo_cliente | primeiro_nome | segundo_nome | sobrenome_cliente | Nome Completo |
| :- | :- | :- | :- | :-
| NULL | Ana | Julia | Mattos | Ana Julia Mattos |
| Sra. | Maria | Joaquina | Medsen | Sra. Maria Joaquina Medsen |
| Sr. | Ozzy | NULL | Osbourne | Sr. Ozzy Osbourne |

## Uso de Inteligência Artificial
Este assistente interativo foi utilizado para aprimorar o entendimento dos comandos SQL, fornecer dicas de boas práticas de programação e refinar a estrutura deste README.
