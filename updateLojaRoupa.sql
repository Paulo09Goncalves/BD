USE bdLojaRoupa

UPDATE tbFabricante 
SET nomeFabricante = 'Turma da Malha'
WHERE nomeFabricante = 'Cia da Malha'
	SELECT * FROM tbFabricante 

UPDATE tbVenda
SET totalVenda = totalVenda*0.90
WHERE codCliente = 1 
	SELECT * FROM tbVenda

UPDATE tbProduto
SET precoProduto = precoProduto*1.20
WHERE codFabricante = 2
	SELECT * FROM tbProduto 

UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3
	SELECT * FROM tbProduto 

DELETE FROM tbItensVenda
WHERE codItensVenda = 4
	SELECT*FROM tbItensVenda 

DELETE FROM tbItensVenda
WHERE codVenda = 3 
	SELECT*FROM tbItensVenda

DELETE FROM tbFabricante
WHERE codFabricante = 1
	SELECT*FROM tbFabricante
/* N�o � poss�vel excluir o fabricante pois, ele est� relacionado a produtos da tbProduto.
