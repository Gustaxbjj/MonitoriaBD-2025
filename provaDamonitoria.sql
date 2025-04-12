create database lojinha ;
use lojinha;

create table clientes(
cidade varchar(30),
id_cliente varchar(5)primary key,
nome varchar(100),

FK_id_pedido varchar(5),
foreign key(FK_id_pedido) references pedidos(id_pedido)
);

create table produtos(
id_produto varchar(5)primary key,
nome varchar(100),
preco double,

FK_id_categoria varchar(5),
foreign key(FK_id_categoria) references categorias(id_categoria)
);

create table categorias(
id_categoria varchar(5)primary key,
nome varchar(100)
);

create table pedidos(
id_pedido varchar(5) primary key,
data date,
valor double
);

create table PedidosProdutos(
FK_id_produto varchar(5),
FK_id_pedido varchar(5),
quantidade double,
foreign key(FK_id_pedido) references pedidos(id_produto),
foreign key(FK_id_produtos) references produtos(id_produto),
primary key (FK_id_produto,FK_id_pedido)
);

