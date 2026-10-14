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








