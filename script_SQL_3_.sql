use db_videolocadora;
show tables;

select * from tbl_ator;
select * from tbl_genero;
select * from tbl_diretor;
select * from tbl_filme;
select * from tbl_filme_ator;
select * from tbl_filme_diretor;
select * from tbl_filme_genero;
select * from tbl_estoque;



select tbl_filme.titulo,
tbl_ator.nome as nome_ator
from tbl_filme
join tbl_filme_ator
on tbl_filme.id = tbl_filme_ator.id_filme
join tbl_ator
on tbl_ator.id = tbl_filme_ator.id_ator;


select tbl_filme.titulo, tbl_filme.classificacao,
tbl_genero.nome as nome_genero
from tbl_filme
join tbl_filme_genero
on tbl_filme.id = tbl_filme_genero.id_filme
join tbl_genero
on tbl_genero.id = tbl_filme_genero.id_genero;

select tbl_filme.titulo, 
tbl_diretor.nome as nome_diretor,
tbl_diretor.nacionalidade
from tbl_filme
join tbl_filme_diretor
on tbl_filme.id = tbl_filme_diretor.id_filme
join tbl_diretor
on tbl_diretor.id = tbl_filme_diretor.id_diretor;

select tbl_filme.titulo, tbl_filme.avaliacao from tbl_filme;


