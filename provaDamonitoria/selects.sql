#A)
select max(preco) AS precoMaximo, min(preco) AS precoMinimo, avg(preco) AS Media from produtos;

#B)
select nome from clientes where nome like('S%');

#C)
select sum(p.preco * pp.quantidade) AS valor
from produtos p join PedidosProdutos pp on p.id_produto = pp.FK_id_produto
join categorias c on p.FK_id_categoria = c.id_categoria
join pedidos ped on pp.FK_id_pedido = ped.id_pedido where c.nome = 'Vestuário';

#D)
select id_produto from produtos where id_produto in ('44444', '35555', '56666');


#E)
select FK_id_cliente from pedidos where FK_id_cliente > 3;			

