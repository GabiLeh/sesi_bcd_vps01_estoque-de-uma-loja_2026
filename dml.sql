use estoque_loja;

insert into categoria(nome, descricao) values
("Camiseta", "Camiseta Unisex"),
("Calça Jeans", "Calça Unisex"),
("Camisa", "Camisa Unisex");

select * from categoria;

insert into fornecedor(razao_social, nome_fantasia, telefone, email, cnpj, endereco) values
("Roupas Diversas","RD","19993258698","roupasdiversas@gmail.com","08659458/0001-99","Rua Encomendador"),
("Jeans++","J++","19991539875","jeansplusplus@gmail.com","09524757/0008-56","Rua Camandocaia"),
("Space Me!","SM","19962457893","spacememe@gmail.com","01255682/0007-88","Rua Ítalia");

select* from fornecedor;

insert into produto(nome, descricao, preco, marca, id_categoria, id_fornecedor) values
("Camiseta Linkin Park","Camiseta da banda norte americana Linkin Park","30","sem marca",1,1),
("Calça Jeans","Calça Jeans tamanho M","60","Jeans",2,2),
("Camiseta Meteora","Camiseta do albúm Meteora (2003) da banda norte americana Linkin Park","37","sem marca",3,1);

select * from produto;

insert into estoque(id_produto, quantidade, quantidade_minima, localizacao) values
("1","3", "1","Rua Azevedo"),
("2","4", "1","Rua Encomendador"),
("3","1", "1","Rua Figueira");

select * from estoque;

insert into movimentacao_estoque(id_produto, tipo, quantidade, data) values
("1","Saída","3","2026-02-27"),
("2","Entrada","4","2026-05-10"),
("3","Saída","1","2026-02-07");

select * from movimentacao_estoque;