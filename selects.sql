#A)
select max(preco) AS precoMaximo, min(preco) AS precoMinimo, avg(preco) AS Media from produtos;

#B)
select nome from clientes where nome like('S%');

#C)

#D)
SELECT id_produto FROM produtos WHERE id_produto IN ('44444', '35555', '56666');


#E)
select FK_id_cliente from pedidos where FK_id_cliente > 3;			

