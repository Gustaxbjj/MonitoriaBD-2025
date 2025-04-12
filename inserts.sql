insert into categorias(id_categoria,nome)values
('11111','vestuario'),
('22222','calçados'),
('33333','bonés');

insert into produtos(id_produto,nome,preco,FK_id_categoria)values
('44444','blusa', 20.00,'11111'),
('55555','air jordan',200.00, '22222'),
('66666','boné',30.00,'33333');

insert into clientes(id_cliente,nome,cidade)values
('77777','david','maceio'),
('88888','talys', 'rio largo'),
('99999','adonai','flexeiras');

insert into pedidos(id_pedido,data,valor,FK_id_cliente )values
('00000','2025-05-26', 30.00,'77777'),
('10101','2025-04-26', 20.00,'88888'),
('20202','2025-06-01', 200.00,'99999');

insert into PedidosProdutos(FK_id_produto,FK_id_pedido,quantidade )values
('44444','00000', '2')

	