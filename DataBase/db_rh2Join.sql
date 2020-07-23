create database db_rh2;

use db_rh2;

create table tb_cargo(
id bigint (5) auto_increment,
setor varchar (50) not null,
cargo varchar (50) not null,
primary key(id)
);

insert into tb_cargo (setor,cargo) values ("Financeiro","Assitente Financeiro");
	insert into tb_cargo (setor,cargo) values ("Sistemas","Desenvolvedor Junior");
		insert into tb_cargo (setor,cargo) values ("Banco de Dados","Analista de Dados");
			insert into tb_cargo (setor,cargo) values ("Sistemas","Programador Pleno");
				insert into tb_cargo (setor,cargo) values ("Administrativo", "Auxiliar Administrativo");
            
create table tb_funcionarios(
cod bigint (15) auto_increment,
nome varchar (128) not null,
cpf varchar (15) not null,
salario decimal (6,2),
cargo_id bigint not null,
primary key(cod),
foreign key(cargo_id) references tb_cargo (id) 
);

insert into tb_funcionarios (nome,cpf,cargo_id,salario)
	values ("Cassandra Oliver","213.312.132-00",2,5022.19);
	insert into tb_funcionarios (nome,cpf,cargo_id,salario)
		values ("Marta Meires","312.213.123-00",3,3756.00);
        insert into tb_funcionarios (nome,cpf,cargo_id,salario)
			values ("Carlos Zuqui","222.333.111-00",4,4968.89);
            insert into tb_funcionarios (nome,cpf,cargo_id,salario)
				values ("Carmen Flores","231.312.213-00",1,2024.00);
                insert into tb_funcionarios (nome,cpf,cargo_id,salario)
					values ("Tomas Almeida","221.332.112-00",2,5022.19);
                    insert into tb_funcionarios (nome,cpf,cargo_id,salario)
						values ("Julia Costa","333.222.111-00",4,4968.89);
                        insert into tb_funcionarios (nome,cpf,cargo_id,salario)
							values ("Carla Santos","123.321.222-00",2,5022.19);
								insert into tb_funcionarios (nome,cpf,cargo_id,salario)
									values ("Luan Castro","222.111.333-00",5,1200.59);
									insert into tb_funcionarios (nome,cpf,cargo_id,salario)
										values ("Vanessa Silva","333.111.222-00",5,2000.00);
										insert into tb_funcionarios (nome,cpf,cargo_id,salario)
											values ("Antoni Pereira","111.333.222-00",5,1269.35);
                            
select salario from tb_funcionarios where salario > 2000;
select salario from tb_funcionarios where salario >= 1000 and salario <= 2000;
select * from tb_funcionarios where nome like "%C%";
select * from tb_funcionarios 
	inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id;
select * from tb_funcionarios 
	inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
		where tb_cargo.cargo = "Desenvolvedor Junior";
