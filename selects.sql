#A)
select max(preco) AS precoMaximo, min(preco) AS precoMinimo, avg(preco) AS Media from produtos;

#B)
select nome from clientes where nome like('S%');

#C)
select p.preco As preço, c.categoria  
from p produtos inner join categorias c on c.= max()
