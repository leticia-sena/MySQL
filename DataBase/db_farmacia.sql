create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint (5) auto_increment primary key,
categoria varchar (50) not null,
ativo boolean
);

insert into tb_categorias (categoria,ativo) 
	values ("Medicamentos",1), 
		   ("Higiene Pessoal",1),
		   ("Oftalmologicos",1),
           ("Perfumaria",1);
           
create table tb_produtos(
id bigint (8) auto_increment primary key,
produto varchar (50) not null,
marca varchar (50) not null,
valor decimal (6,2),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_produtos (produto,marca,valor,categoria_id)
	values ("Sabote intimo","Dove",15.75,2),
		   ("Shampoo","Salon Line",12.85,4),
           ("Dipirona Sódica","Novalgina",18.90,1),
           ("Protetor solar","Renew",53.90,4),
           ("Paracetamol","Cimegripe",20.53,1),
           ("Colírio","Alcon",148.20,3),
           ("Desodorante","Above",7.99,2),
           ("Pomada","Terramicina",89.72,3);
           
	/*COMANDOS--Select maior*/
select tb_produtos.produto,
	   tb_produtos.marca,
       tb_produtos.valor,
       tb_categorias.categoria from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.valor > 50;
    
	/*COMANDOS--Select entre*/
select tb_produtos.produto,
	   tb_produtos.marca,
       tb_produtos.valor,
       tb_categorias.categoria from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.valor between 3 and 60;
    
	/*COMANDOS--Like*/
select tb_produtos.produto,
	   tb_produtos.marca,
       tb_produtos.valor,
       tb_categorias.categoria from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.produto like "%b%";
    
	/*COMANDOS--Where*/
select tb_produtos.produto,
	   tb_produtos.marca,
       tb_produtos.valor,
       tb_categorias.categoria from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
	where tb_produtos.categoria_id = 1;
    

    