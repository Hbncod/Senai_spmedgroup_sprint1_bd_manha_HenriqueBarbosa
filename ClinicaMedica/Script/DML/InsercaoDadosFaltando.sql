Create Database SpMedGroup 
Go
Use SpMedGroup
Go
Create Table TipoMedico(
	Id_TipoMedico	Int Primary Key Identity,
	Tipo			VarChar(50)
);
go
Create Table TipoUsuario(
	Id_TipoUsuario	Int Primary Key Identity,
	Tipo			VarChar(50)
);
go
Create Table Clinicas(
	Id_Clinica		Int Primary Key Identity,
	NomeFantasia	VarChar(200),
	Endereco		VarChar(255),
	Cnpj			VarChar(14),
	Abre			Time,
	Fecha			Time
);
go
Create Table SituacaoConsulta(
	Id_Situacao		Int Primary Key Identity,
	Situacao		VarChar(30)
);

go
Create Table Medico(
	Id_Medico		Int Primary Key Identity,
	Nome			VarChar(200),
	CRM				VarChar(20) Not NULL,
	Fk_TipoMedico	Int Foreign Key References TipoMedico (Id_TipoMedico) Not NULL
);
go
Create Table Usuario(
	Id_Usuario		Int Primary Key Identity,
	Nome			VarChar(200) Not NULL,
	RG				VarChar(15)  Not NULL,
	CPF				VarChar(15)  Not NULL,
	DataNascimento	Date		 Not NULL,
	Telefone		VarChar(15)  Not NULL,
	Email			VarChar(100) Not NULL,
	Senha			VarChar(30)	 Not NULL,
	Fk_TipoUsuario	Int Foreign Key References TipoUsuario (Id_TipoUsuario) Not NULL
);
go
Create Table Consultas(
	Id_Consulta		Int Primary Key Identity,
	DataConsulta	DateTime Not NULL,
	Descricao		VarChar(max),
	Fk_Clinica		Int Foreign Key References Clinicas (Id_Clinica) Not NULL,
	Fk_Usuario		Int	Foreign Key	References Usuario	(Id_Usuario) Not NULL,
	Fk_Situacao		Int	Foreign Key	References SituacaoConsulta	(Id_Situacao) ,
	Fk_Medico		Int Foreign Key References Medico	(Id_Medico) Not NULL
);
go
Select * From Clinicas
Select * From TipoMedico
Select * From TipoUsuario
Select * From SituacaoConsulta
Select * From Medico
Select * From Usuario
Select * From Consultas 
go
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
