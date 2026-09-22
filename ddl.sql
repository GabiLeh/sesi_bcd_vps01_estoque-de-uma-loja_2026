drop database if exists estoque_loja;
create database estoque_loja;
use estoque_loja;
create table produto(
    id int not null primary key auto_increment,
    nome varchar(40) not null,
    descricao varchar(100),
    preco decimal(10,2) not null,
    marca varchar(40) not null,
    id_categoria int not null,
    id_fornecedor int not null
);
create table categoria(
    id int not null primary key auto_increment,
    nome varchar(40) not null,
    descricao varchar(100)
);
create table fornecedor(
    id int not null primary key auto_increment,
    razao_social varchar(100) not null,
    nome_fantasia varchar(10) not null,
    cnpj varchar(14) not null,
    telefone varchar(11) not null,
    email varchar(50) not null,
    endereco varchar(40) not null
);
create table estoque(
    id_estoque int not null primary key auto_increment,
    id_produto int not null,
    quantidade int not null,
    quantidade_minima int not null,
    localizacao varchar(40) not null
);
create table movimentacao_estoque(
    id_movimentacao int not null primary key auto_increment,
    id_produto int not null,
    tipo varchar(40) not null,
    quantidade int not null,
    data date
);

alter table produto add constraint fk_categoria foreign key (id_categoria) references categoria(id);
alter table produto add constraint fk_fornecedor foreign key (id_fornecedor) references fornecedor(id);
alter table estoque add constraint fk_produto foreign key (id_produto) references produto(id);

describe produto;
describe categoria;
describe fornecedor;
describe estoque;
describe movimentacao_estoque;
show tables;