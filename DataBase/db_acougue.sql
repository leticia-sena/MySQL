create database db_cidade_das_carnes;   
    
use db_cidade_das_carnes;

create table tb_categorias(
id bigint (5) auto_increment primary key,
categoria varchar (50) not null,
ativo boolean
);

insert into tb_categorias (categoria,ativo) 
	values ("Aves",1), 
		   ("Bovinos",1),
		   ("Suinos",1);
           
create table tb_produtos(
id bigint (8) auto_increment primary key,
produto varchar (50) not null,
peso varchar (50) not null,
valor decimal (6,2),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_produtos (produto,peso,valor,categoria_id)
	values ("Coxão Mole","0,800g",22.99,2),
		   ("Filé Mignon","1kg",52.99,2),
           ("Bisteca","0,500g",16.99,3),
           ("Linguiça","0,400g",9.89,3),
           ("Patinho","0,900g",32.98,2),
           ("Coxa e Sobrecoxa","2kg",26.40,1),
           ("Asa","5,800kg",62.15,1),
           ("Filé Frango","3,259kg",45.61,1);  
    
    /*COMANDOS--Select maior*/
select tb_produtos.produto,
	   tb_produtos.peso,
	   tb_produtos.valor,
	   tb_categorias.nome from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.valor >50;
    
	/*COMANDOS--Select entre*/
select tb_produtos.produto,
	   tb_produtos.peso,
	   tb_produtos.valor,
	   tb_categorias.nome from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.valor between 3 and 60;
    
	/*COMANDOS--Like*/
select tb_produtos.produto,
	   tb_produtos.peso,
	   tb_produtos.valor,
	   tb_categorias.nome from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.produto like "%c%";
    
	/*COMANDOS--Where*/
select tb_produtos.produto,
	   tb_produtos.peso,
	   tb_produtos.valor,
	   tb_categorias.nome from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.categoria_id = 2;