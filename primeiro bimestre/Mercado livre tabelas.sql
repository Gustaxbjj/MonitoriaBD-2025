create database mercado_livre;
use mercado_livre;

create table categoria(
nome varchar(20),
id_categoria int primary key
);

create table usuario(
nome varchar(20),
id_usuario int primary key,
email varchar(100),
senha varchar(8),
cep varchar(9),
end text,
tel varchar(8)
);

create table loja(
nome varchar(20),
id_loja int primary key,
email varchar(100),
senha varchar(8),
cnpj varchar(14),
nota NUMERIC(10, 2) CHECK (nota BETWEEN 0 AND 5),
endereco text
);

create table produto(
id_produto int primary key,
nome varchar(100),
especificacoes text,
preco double,
avaliacao NUMERIC(10, 2) CHECK (avaliacao BETWEEN 0 AND 5),
descricao text,
FK_id_categoria int,
foreign key(FK_id_categoria) references categoria(id_categoria)
);

create table pedido(
id_pedido int primary key,
nome double,
dat_entrega date,
frete double,
FK_id_loja int,
FK_id_usuario int,
foreign key(FK_id_loja) references loja(id_loja),
foreign key(FK_id_usuario) references usuario(id_usuario)
);

create table lojaProduto(
quant_vendida double,
FK_id_loja int,
FK_id_usuario int,
foreign key(FK_id_usuario) references usuario(id_usuario),
foreign key(FK_id_loja)references loja(id_loja),
primary key(FK_id_loja,FK_id_usuario)
);

create table pedidoProduto(
quant double,
FK_id_pedido int,
FK_id_produto int,
foreign key(FK_id_pedido) references pedido(id_pedido),
foreign key(FK_id_produto)references produto(id_produto),
primary key(FK_id_pedido,FK_id_produto)
);



