create database db_rh;

use db_rh;

create table tb_funcionario(
cod bigint (15) auto_increment,
nome varchar (128) not null,
telefone varchar (15) not null,
cpf varchar (15) not null,
setor varchar (20) not null,
salario decimal(6,2),
primary key(cod));

insert into tb_funcionario (nome,telefone,cpf,setor,salario) 
	values ("Adelton da Silva","(11) 95262-6252","152.258.321-00","Administrativo",1500.00);
	insert into tb_funcionario (nome,telefone,cpf,setor,salario) 
		values ("Cassandra Oliver","(11) 93366-6633","213.312.132-00","Compras",3800.00);  
		insert into tb_funcionario (nome,telefone,cpf,setor,salario)
			values ("Jorgina de Souza","(11) 92315-1523","312.123.231-00","Operacional",1050.00);
			insert into tb_funcionario (nome,telefone,cpf,setor,salario)
				values ("Major Batista","(11) 91521-2115","123.321.222-00","Comercial",2500.00);
                insert into tb_funcionario (nome,telefone,cpf,setor,salario)
					values ("Laila Zuqui","(11) 99699-9969","222.333.111-00","Infraestrutura",2100.00);
                    
select salario from tb_funcionario where salario < 2000;
select salario from tb_funcionario where salario > 2000;
update tb_funcionario set telefone = "(11) 92233-3322" where cod = 1;