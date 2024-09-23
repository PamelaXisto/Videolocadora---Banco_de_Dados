use db_videolocadora;
show tables;

insert into tbl_ator (nome) values ('John Cusack');
select * from tbl_ator;


insert into tbl_genero (nome) values ('Musical');
select * from tbl_genero;


insert into tbl_diretor (nome,
						nacionalidade
                        ) values ('Stephen Frears',
								'Britanico');

select * from tbl_diretor;


insert into tbl_filme (		isan,
							titulo,
                            classificacao,
                            descricao,
                            data_lancamento,
                            avaliacao
					) values (
						'123',
                        'Alta Fidelidade',
                        'Não recomendado para menores de 14 anos',
                        'Rob, dono de uma loja de discos e criador de listas compulsivo, relata seus cinco principais términos de relacionamento, incluindo o que está em andamento.',
                        '2000-09-16',
                        '7.4'
                    );
                    
select * from tbl_filme;


insert into tbl_filme_diretor (	id_filme,
								id_diretor
								) values (
									'12',
									'12'
								);

select * from tbl_filme_diretor;


insert into tbl_filme_genero (	id_filme,
								id_genero
								) values (
									'12',
									'12'
								);

select * from tbl_filme_genero;


insert into tbl_filme_ator (	id_filme,
								id_ator
								) values (
									'12',
									'12'
								);
                                
select * from tbl_filme_ator;


insert into tbl_estoque (		qtde_disponivel,
								id_filme
								) values (
									'1',
									'12'
								);

select * from tbl_estoque