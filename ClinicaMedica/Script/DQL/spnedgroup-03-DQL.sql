			--DQL

			--Mostrar As consultas dos médicos

			Select DataConsulta as DiaEHora,Descricao,Clinicas.NomeFantasia,Clinicas.Endereco,Usuario.Nome, SituacaoConsulta.Situacao  From Consultas
			Inner Join Clinicas on Fk_Clinica = Clinicas.Id_Clinica
			Inner Join Usuario  on Fk_Usuario = Id_Usuario
			Inner Join SituacaoConsulta on SituacaoConsulta.Id_Situacao = Consultas.Fk_Situacao
			Where Consultas.Fk_Medico = 2;-- Id Do Médico Solicitado


			--Mostrar As Consultas Do paciente
			Select DataConsulta as DataEHora,Descricao,Clinicas.Endereco as Endereco,SituacaoConsulta.Situacao as Situacao, Medico.Nome as Medico, TipoMedico.Tipo as TipoConsulta From Consultas
			Inner Join Clinicas on Clinicas.Id_Clinica = Consultas.Fk_Clinica
			Inner Join Medico On Medico.Id_Medico = Consultas.Fk_Medico
			Inner Join SituacaoConsulta on SituacaoConsulta.Id_Situacao = Consultas.Fk_Situacao
			Inner Join TipoMedico On Id_TipoMedico = Medico.Fk_TipoMedico
			Where Consultas.Fk_Usuario = 1; -- Id do paciente Socilitado
			