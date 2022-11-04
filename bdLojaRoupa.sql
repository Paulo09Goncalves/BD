CREATE DATABASE bdLojaRoupa

GO

USE bdLojaRoupa

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente VARCHAR(40) NOT NULL
	,idadeCliente SMALLINT NOT NULL
)

CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeVendedor  VARCHAR(40) NOT NULL
)

CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY(1,1)
	,nomeFuncionario VARCHAR (40) NOT NULL
	,idadeFuncionario SMALLINT NOT NULL
	,dataAdimissao SMALLDATETIME NOT NULL
	,salarioFuncionario SMALLMONEY NOT NULL
)

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR (40) NOT NULL
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,totalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	,codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	,nomeProduto VARCHAR(30) NOT NULL
	,precoProduto SMALLMONEY NOT NULL
	,dataEntradaProduto SMALLDATETIME NOT NULL
	,estoqueProduto INT NOT  NULL
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY(1,1)
	,quantidadeItens SMALLINT NOT NULL
	,subTotalItens  SMALLMONEY NOT NULL
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
)