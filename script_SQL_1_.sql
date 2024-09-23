show databases;

use db_videolocadora;

create database db_videolocadora;

show tables;

create table tbl_genero (
	id int not null primary key auto_increment,
    nome varchar(50) not null,
    unique index(id)
);


create table tbl_diretor (
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    nacionalidade varchar(100) not null,
    unique index(id)
);


create table tbl_ator (
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    unique index(id)
);


create table tbl_filme (
	id int not null primary key auto_increment,
    isan varchar(100) not null,
    titulo varchar(50) not null,
    classificacao varchar(45) not null,
    descricao text not null,
    data_lancamento date not null,
    avaliacao varchar(45) not null,
    unique index(id)
);


create table tbl_filme_diretor (
	id int not null primary key auto_increment,
    id_filme int not null,
    id_diretor int not null,
    
    constraint FK_Diretor_Filme_Diretor
    foreign key (id_diretor)
    references tbl_diretor (id),
    
    constraint FK_Filme_Filme_Diretor
    foreign key (id_filme)
    references tbl_filme (id),
    
    unique index (id)
);

create table tbl_filme_genero (
	id int not null primary key auto_increment,
    id_filme int not null,
    id_genero int not null,
    
    constraint FK_Genero_Filme_Genero
    foreign key (id_genero)
    references tbl_genero (id),
    
    constraint FK_Filme_Filme_Genero
    foreign key (id_filme)
    references tbl_filme (id),
    
    unique index (id)
);


create table tbl_filme_ator (
	id int not null primary key auto_increment,
    id_filme int not null,
    id_ator int not null,
    
    constraint FK_Ator_Filme_Ator
    foreign key (id_ator)
    references tbl_ator (id),
    
    constraint FK_Filme_Filme_Ator
    foreign key (id_filme)
    references tbl_filme (id),
    
    unique index (id)
);


create table tbl_estoque (
	id int not null primary key auto_increment,
    qtde_disponivel int not null,
    id_filme int not null,
    
    constraint FK_Filme_Estoque
    foreign key (id_filme)
    references tbl_filme (id),
    
    unique index(id)
);


desc tbl_estoque;
desc tbl_diretor;
desc tbl_filme_diretor;
