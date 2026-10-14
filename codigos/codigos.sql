use vendas_informatica;

select nome_cliente, cidade, estado
from cliente; 

comentario: ta selecionando todos os atrributos de cliente

********

use vendas_informatica;
select nome_cliente, cidade, estado
from cliente where estado = "MG"; 

******

use vendas_informatica;
select nome_cliente, cidade, estado
from cliente where estado = "MG" or estado = "RJ"; 

*******

use vendas_informatica;
select nome_cliente, cidade, estado
from cliente where estado = "MG" or estado = "SP"; 

******

use vendas_informatica;
select marca
from produto where marca = "Lenovo" or marca = "Acer"; 

*******

use vendas_informatica;
select categoria, marca, estoque 
from produto where marca = "Lenovo" or marca = "Acer" or marca = "Dell"; 

******

use vendas_informatica;
select * from produto where marca = "Lenovo" or marca = "Acer" or marca = "Dell";

******
use vendas_informatica;
select * from produto where marca in ("Lenovo", "Dell", "Acer");

******

select nome_produto, categoria, marca, estoque
from produto where marca in ("Lenovo", "LG", "Kingston");

*****

select * from produto where marca in ("Lenovo", "LG", "Acer") and estoque < 100;

******

select nome_produto, categoria, marca, estoque 
from produto where marca in ("Lenovo", "Dell", "LG") and estoque >= 100;

******

select * from produto where marca in ("Lenovo", "Dell", "LG") and estoque < 100 
order by marca asc;

*****

order by asc crescente e desc decrecente

******

select * from produto where marca in ("Dell", "Lenovo") and estoque > 100
order by produto desc; 

***** 

select * from venda where forma_pagamento = "pix"

*****

select data_venda, quantidade, preco_unitario_venda, forma_pagamento, status_venda 
from venda where forma_pagamento ("PIX", "Boleto", "Transferencia");

******

select cliente.nome_cliente, venda.forma_pagamento
from cliente
inner join venda 
on venda.id_cliente = cliente.id_cliente;

******


select produto.nome_produto, venda.preco_unitario_venda
from produto
inner join venda 
on venda.id_cliente = produto.id_produto;

*****
use vendas_informatica;

select produto.nome_produto, cliente.nome_cliente, venda.preco_unitario_venda
from  produto
inner join venda
on venda.id_produto = produto.id_produto 
inner join cliente 
on cliente.id_cliente = venda.id_cliente;




