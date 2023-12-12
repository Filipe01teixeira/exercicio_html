-- questao01
select * from produtos;

-- questao02
select nome from Fornecedores;

-- questao 04
select * from Produtos where Fornecedor = 2;

-- questao 05
select * from Produtos where Preco > 5;

select * from vendas;

select * from itensdevenda;

select * from vendas inner join itensdevenda;

-- step 02

-- step 02
select * from Vendas V inner join ItensDeVenda IV on V.ID = IV.IDDaVenda -- coloca apelidos nas tabelas para evitar ambiguidade (ItensDeVenda e Vendas tem o mesmo campo ID) 
where IV.IDDoProduto = 2;

-- questao 07
select SUM(QuantidadeEmEstoque * Preco) from Produtos;

-- questao 08
select Categoria, SUM(QuantidadeEmEstoque * Preco) from Produtos
group by Categoria;

-- questao 09
select * from Produtos where Categoria = 2;

-- questao 10
select * from Vendas where Funcionario = "Maria Santos";

-- questao 11
select * from ItensDeVenda iv
inner join Produtos p on iv.IDDoProduto = p.ID
where iv.IDDaVenda = 1; 

-- questao 14
-- step 01
SELECT * from fornecedores INNER JOIN produtos;
-- step 02
SELECT * from Fornecedores f INNER JOIN Produtos p;
-- step 03
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor;
-- step 04
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor GROUP BY f.ID;
-- step 05
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor GROUP BY f.ID
HAVING SUM(p.QuantidadeEmEstoque) > 60;