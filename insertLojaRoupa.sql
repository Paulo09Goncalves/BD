USE bdLojaRoupa

INSERT INTO tbFabricante (nomeFabricante)
VALUES
	('Malwee')
	,('Marisol')
	,('Cia da Malha')
	SELECT*FROM tbFabricante

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdimissao, salarioFuncionario)
VALUES
	('Rhuan Passos', 23, '07/04/2019', 1800)
	,('Paulo Gonçalves', 21, '12/08/2020', 1500)
	SELECT*FROM tbFuncionario

INSERT INTO tbProduto (nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES
	('Moletom verde', 59.90, '10/05/2019', 54, 1, 2)
	,('Moletom menina rosa', 37.77, '01/11/2020', 28, 2, 2)
	,('Moletom conjunto menino preto', 54.95, '02/11/2020', 10, 2, 2)
	,('Camiseta Roarsome', 19.90, '10/09/2020', 99, 1, 1)
	,('Vestido floral', 25.90, '09/11/2021', 163, 2, 1)
	,('Camiseta branca', 49.90, '03/11/2020', 300, 1, 1)
	,('Pijama inverno sereia', 175.50, '01/12/2021', 40, 1, 3)
	,('Pijama feminino floral', 69.95, '04/01/2020', 33, 2, 3)
	,('Pijama inverno fleece', 159.90, '07/02/2022', 389, 2, 3)
	SELECT*FROM tbProduto

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES
	('Victor Volpi', 21)
	,('Luckas Lopes', 22)
	,('Clodoaldo Bastos', 77)
	,('Vanessa Ferraz', 28)
	,('Rosangela Freire', 26)
	SELECT*FROM tbCliente

INSERT INTO tbVendedor (nomeVendedor)
VALUES
	('João Santana')
	,('Raquel Torres')
	SELECT*FROM tbVendedor

INSERT INTO tbVenda (dataVenda, totalVenda, codCliente, codVendedor)
VALUES
	('03/12/2020', 107.72, 4, 1)
	,('08/02/2022', 219.8, 5, 2)
	,('05/12/2021', 104.85, 1, 1)
	,('03/01/2021', 57.67, 2, 1)
	,('25/12/2021', 201.4, 3, 2)
	SELECT*FROM tbVenda

INSERT INTO tbItensVenda (quantidadeItens, subTotalItens, codVenda, codProduto)
VALUES
	(2, 56.90, 1, 2)
	,(3, 51.10, 1, 4)
	,(1, 159.90, 2, 9)
	,(2, 119.80, 2, 1)
	,(4, 75.77, 3, 6)
	,(1, 54.80, 3, 7)
	,(5, 182.90, 4, 5)
	,(6, 88.88, 4, 8)
	,(2, 75.20, 5, 3)
	,(3, 69.82, 5, 7)
	SELECT * FROM tbItensVenda
