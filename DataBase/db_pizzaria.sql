create database db_pizzaria_legal;

use db_pizzaria_legal;

	/*CRIAÇÃO DA TABELA--Categoria*/
create table tb_categoria(
id bigint (5) auto_increment,
tamanho varchar (20) not null,
categoria varchar (20) not null,
primary key (id)
);

	/*POPULANDO 1ª TABELA--Categoria*/
insert into tb_categoria (tamanho, categoria)
	values ("broto","doce");
insert into tb_categoria (tamanho, categoria)
	values ("broto","salgada");
insert into tb_categoria (tamanho, categoria)
	values ("grande","doce");
insert into tb_categoria (tamanho, categoria)
	values ("grande","salgada");
    
	/*CRIAÇÃO DA TABELA--Pizza*/
create table tb_pizza(
id bigint (8) auto_increment,
sabor varchar (20) not null,
ingrediente varchar (150) not null,
valor decimal (4,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

	/*POPULANDO 2ª TABELA--Pizza*/
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Toscana","Calabresa, mussarela e azeitona",54.99,4);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Calabresa","Calabresa, cebola e azeitona",32.99,4);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Portuguesa","Presunto, ovo, mussarela e azeitona",47.99,2);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Marguerita","Mussarela, manjericão, tomate e azeitona",44.99,2);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Brigadeiro","Chocolate e granulado",32.99,3);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Romeu e Julieta","Goiabada e mussarela",40.99,3);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Prestigio","Chocolate e coco ralado",34.99,1);
insert into tb_pizza (sabor,ingrediente,valor,categoria_id) 
	values("Confeti","Chocolate e M&M's",36.99,1);
    
	/*COMANDOS--Select maior*/
select tb_pizza.sabor, 
	   tb_pizza.ingrediente, 
       tb_pizza.valor,
       tb_categoria.categoria from tb_pizza
	inner join tb_categoria on tb_categoria.id= tb_pizza.categoria_id
		where tb_pizza.valor > 45;
        
	/*COMANDOS--Select entre*/
select tb_pizza.sabor,
	   tb_pizza.ingrediente,
	   tb_pizza.valor, 
       tb_categoria.categoria from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
		where tb_pizza.valor between 29 and 60;
        
	/*COMANDOS--Like*/
select tb_pizza.sabor,
	   tb_pizza.ingrediente,
	   tb_pizza.valor, 
       tb_categoria.categoria from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
		where tb_pizza.sabor like "%c%";
        
	/*COMANDOS--Where*/
select tb_pizza.sabor,
	   tb_pizza.ingrediente,
	   tb_pizza.valor, 
       tb_categoria.categoria from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
		where tb_categoria.categoria like "%salgad%";
	
            
