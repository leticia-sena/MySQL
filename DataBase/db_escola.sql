create database db_escola;

use db_escola;

create table tb_sala(
cod bigint (15) auto_increment,
nome varchar (128) not null,
matricula int (128) not null,
telefone varchar (15) not null,
nota float,
primary key (cod)
);

insert into tb_sala(nome,matricula,telefone,nota)
	values ("Luise Albuquerque",57226,"(11) 91523-2315",7.5);
    insert into tb_sala(nome,matricula,telefone,nota)
		values ("Gabriel Neves",45268,"(11) 95132-3251",6.5);
        insert into tb_sala(nome,matricula,telefone,nota)
			values ("Julia Costa",25319,"(11) 92115-1521",8.2);
            insert into tb_sala(nome,matricula,telefone,nota)
				values ("Tomas Almeida",62594,"(11) 95262-6252",9.3);
                insert into tb_sala(nome,matricula,telefone,nota)
					values ("Eliza Betania",75486,"(11) 98343-4383",6.3);

select nota from tb_sala where nota < 7;
select nota from tb_sala where nota > 7;
update tb_sala set nota = 10 where cod = 4;
                