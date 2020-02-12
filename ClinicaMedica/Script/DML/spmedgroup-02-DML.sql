Insert Into TipoMedico (Tipo)
	Values	('Odontologico'),
			('Pediatra'),
			('Clinico');

go
insert Into TipoUsuario	(Tipo)
	Values	('Usuario'),
			('Adm'),
			('Medico');
go
Insert Into	Clinicas (NomeFantasia,Endereco,Cnpj,Abre,Fecha)
	Values	('SP Medical Group','Paulista,São Paulo, SP','73.262.016-1233-12','08:00:00','20:00:00');

	select * From Clinicas
	--delete from Clinicas

	--DBCC CHECKIDENT('Clinicas', RESEED, 0)
go

Insert Into SituacaoConsulta (Situacao)
	Values	('Agendada'),
			('Realizada'),
			('Cancelada');

Insert Into Generos	(Tipo)
	Values	('Masculino'),
			('Feminino'),
			('Outros');

Insert into Usuario (Nome,RG,CPF,DataNascimento,Telefone,Email,Senha,Fk_TipoUsuario,Fk_Generos)
	Values	 ('João','38.081.3424-12',	'46807412345,00','	03/01/1995',	'11961585953'	,'joao@email.com','	joao123',	3,	1),
			 ('Leonardo','	21.312.324.-6','	4562347999000',	'07/05/1989',	'11982395849','	leandro@email.com'	,'leandro123'	,3,	1),
			 ('Amanda','	32.567.987-5',	'31257875531,00',	'08/01/1988',	'11929394959',	'amanda@email.com',	'amanda123',	3,	2),
			 ('Carol','	12.432.689-7',	'12312321312,00',	'05/04/1993',	'11929394955',	'carol@email.com',	'carol123',	3,	2),
			('Natalia','	65.433.234-5',	'13578887788,00',	'03/04/2001',	'11928398231	','natalia@email.com',	'natalia123',	1,	3),
			('Henrique'	,'38.029.860-8',	'34543545354,00',	'03/04/2001	','11392829832	','hbncod@gmail.com'	,'hique123'	,2	,1),
			('Guilherme',	'23.155.674-2',	'39348172391,00',	'07/01/1997',	'11994837284',	'guilherme@email.com',	'guilherme123',	1,	3);

	
		select * From Medico
insert into Medico(Nome,CRM,Fk_TipoMedico,Fk_Usuario)
	Values  ('Leonardo','2345678',2,2),
		    ('João','4312332',3,1),
			('Amanda','1233212',1,3),
			('Carol','1233321',1,4);


Insert Into Consultas (DataConsulta,Descricao,Fk_Usuario,Fk_Medico,Fk_Clinica,Fk_Situacao)
	Values  ('03/03/2020 19:00:00',null,1,3,1,1),
			('03/03/2020 18:00:00',null,1,2,1,1),
			('15/02/2020 09:00:00','Necessidade Canal',1,4,1,2),
			('16/03/2020 17:30:00',null,1,1,1,3),
			('12/02/2020 10:20:00',null,1,2,1,2);

			DBCC CHECKIDENT('Consultas', RESEED, 0) -- Zerar Id

			select * From Consultas
			
