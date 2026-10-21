
use vendas_informatica;
select * from produto; 
1

/////

select nome_produto, estoque 
from produto;
2

/////

select categoria, nome_produto, preco_unitario, data_cadastro
from produto 
order by  marca asc; 
3

///

select nome_produto, data_cadastro, estoque
from produto 
order by  marca desc;
4

///

use vendas_informatica;
select * from cliente;
5

///

use vendas_informatica;
select nome_cliente, cidade
from cliente
order by estado asc;
6

////

use vendas_informatica;
select nome_cliente, cidade
from cliente
order by estado desc;
7

///

use vendas_informatica;
select nome_cliente, email, estado
from cliente
order by data_cadastro desc;
8

/////

use vendas_informatica;
select * from venda;
9

/////

select cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento
from cliente
inner join venda
on venda.id_cliente = cliente.id_cliente;
10

////

select produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda
from produto
inner join venda
on venda.id_produto = produto.id_produto;
11

////

select produto.nome_produto, produto.preco_unitario, venda.forma_pagamento, venda.data_venda, venda.quantidade, venda.status_venda
from venda 
inner join produto
on venda.id_produto = produto.id_produto;
where venda.forma_pagamento in("PIX", "Boleto");
12

////


select produto.nome_produto, 
venda.data_venda,
 venda.desconto_percentual,
  venda.forma_pagamento
from produto
inner join venda 
on venda.id_produto = produto.id_produto
order by venda.data_venda desc;
13

////

select produto.nome_produto, 
venda.data_venda,
 venda.desconto_percentual,
  venda.forma_pagamento
from produto
inner join venda 
on venda.id_produto = produto.id_produto
order by venda.data_venda desc;
14

////

select  produto.nome_produto,
       cliente.nome_cliente,
       venda.desconto_percentual,
       venda.forma_pagamento
from venda
inner join  produto 
on  venda.id_produto = produto.id_produto
inner join  cliente
on venda.id_cliente = cliente.id_cliente
order by  venda.status_venda asc;
15

////

select  produto.nome_produto,
       cliente.nome_cliente,
       venda.forma_pagamento,
       cliente.email,
       produto.marca
      
from venda
inner join  produto 
on  venda.id_produto = produto.id_produto
inner join  cliente
on venda.id_cliente = cliente.id_cliente
where  venda.status_venda in("Cancelado", "Concluida");
16




















