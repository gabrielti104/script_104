[33mcommit bf849c150061c5ad5acb65d787b4cf9bfd98678a[m[33m ([m[1;36mHEAD -> [m[1;32mGabriel[m[33m)[m
Author: gabrielti104 <gabriel.ssilva155@senacsp.edu.br>
Date:   Tue Jul 19 09:53:36 2022 -0300

    commit 1

[1mdiff --git a/dbAcademia.sql b/dbAcademia.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..bd9fb59[m
[1m--- /dev/null[m
[1m+++ b/dbAcademia.sql[m
[36m@@ -0,0 +1,88 @@[m
[32m+[m[32m-- Apagar o banco de dados[m
[32m+[m[32mdrop database dbAcademia;[m
[32m+[m
[32m+[m[32m-- Visualizar os banco de dados no servidor Mysql[m
[32m+[m[32mshow databases;[m
[32m+[m
[32m+[m[32m-- Criar o banco de dados[m
[32m+[m
[32m+[m[32mcreate database dbAcademia;[m
[32m+[m
[32m+[m[32m-- Acessando o banco de dados[m
[32m+[m[32muse dbAcademia;[m
[32m+[m
[32m+[m[32m-- Visualizar banco de dados criado[m
[32m+[m[32mshow databases;[m
[32m+[m
[32m+[m[32m-- criando as tabelas no banco de dados[m
[32m+[m[32mcreate table tbAtividade([m
[32m+[m[32mid int,[m
[32m+[m[32matividade varchar(45)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbTurma([m
[32m+[m[32mid int,[m
[32m+[m[32mquant_alunos int,[m
[32m+[m[32mhorario_aula datetime,[m
[32m+[m[32mduracao_aula datetime,[m
[32m+[m[32mdata_inicio date,[m
[32m+[m[32mdata_fim date,[m
[32m+[m[32matividade int,[m
[32m+[m[32mid_instrutor int,[m
[32m+[m[32mid_monitor int[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbRegistro([m
[32m+[m[32mid_aluno int,[m
[32m+[m[32mid_turma int,[m
[32m+[m[32mausencia int,[m
[32m+[m[32mid_registro int[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbAluno([m
[32m+[m[32mmatricula int,[m
[32m+[m[32mdate_matricula date,[m
[32m+[m[32mnome varchar(45),[m
[32m+[m[32mendereco varchar(45),[m
[32m+[m[32mtelefone varchar(45),[m
[32m+[m[32mnascimento date,[m
[32m+[m[32maltura float(24),[m
[32m+[m[32mpeso float(24),[m
[32m+[m[32mid_turma int[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbInstrutor([m
[32m+[m[32mrg int,[m
[32m+[m[32mnome varchar(45),[m
[32m+[m[32mnascimento date,[m
[32m+[m[32mtitulacao varchar(45),[m
[32m+[m[32mtelefone varchar(45)[m
[32m+[m[32m);[m
[32m+[m[32minsert into tbInstrutor(rg,nome,nascimento,titulacao,telefone)[m
[32m+[m[32mcreate table tbMonitor([m
[32m+[m[32mid_aluno int[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m-- Visualizar as tabelas criadas[m
[32m+[m[32mshow tables;[m
[32m+[m
[32m+[m[32m-- Visualizar a estrutura da tabela[m
[32m+[m[32mdesc tbAtividade;[m
[32m+[m[32mdesc tbTurma;[m
[32m+[m[32mdesc tbRegistro;[m
[32m+[m[32mdesc tbAluno;[m
[32m+[m[32mdesc tbInstrutor;[m
[32m+[m[32mdesc tbMonitor;[m
[32m+[m
[32m+[m[32minsert into tbAtividade(id,atividade)values(1,'Musculação');[m
[32m+[m
[32m+[m[32minsert into tbTurma(id,quant_alunos,horario_aula,duracao_aula,data_inicioa,data_fim,atividade,id_instrutor,id_monitor)values(1,23,'2022/12/02 12:30:00','2022/11/05 11:12:02','2022/07/12','2022/07/12',12,23,14);[m
[32m+[m
[32m+[m[32minsert into tbRegistro(id_aluno,id_turma,ausencia,id_registro)values(4,10,13,77);[m
[32m+[m
[32m+[m[32minsert into tbAluno(matricula,date_matricula,nome,endereco,telefone,nascimento,altura,peso,id_turma)values(6,'2021/04/02','gabriel sousa santos','rua pedro almeida n1','1159218885','2004/05/10','1,82','50,5',373);[m
[32m+[m
[32m+[m[32mselect * from tbAtividade;[m
[32m+[m[32mselect * from tbTurma;[m
[32m+[m[32mselect * from tbRegistro;[m
[32m+[m[32mselect * from tbAluno;[m
\ No newline at end of file[m
[1mdiff --git a/dbClinica_medica.sql b/dbClinica_medica.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..e07ab6b[m
[1m--- /dev/null[m
[1m+++ b/dbClinica_medica.sql[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m[32mdrop database dbClinica_medica;[m
[32m+[m
[32m+[m[32mcreate database dbClinica_medica;[m
[32m+[m
[32m+[m[32muse dbClinica_medica;[m
[32m+[m
[32m+[m[32mcreate table tbMedico([m
[32m+[m[32midMedico int not null auto_increment,[m
[32m+[m[32mnmMedico varchar(45),[m
[32m+[m[32mtelefoneMedico varchar(9),[m
[32m+[m[32mprimary key (idMedico)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbPaciente([m
[32m+[m[32midPaciente int not null auto_increment,[m
[32m+[m[32mnmPaciente varchar(45),[m
[32m+[m[32mtelefonePaciente varchar(9),[m
[32m+[m[32mconvenio varchar(45),[m
[32m+[m[32mprimary key (idPaciente)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbReceitaMedica([m
[32m+[m[32midReceitaMedica int not null auto_increment,[m
[32m+[m[32mdescricao varchar(250),[m
[32m+[m[32mprimary key (idReceitaMedica)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbConsulta([m
[32m+[m[32midConsulta int not null auto_increment,[m
[32m+[m[32mdt_consulta datetime,[m
[32m+[m[32mMedico_idMedico int not null,[m
[32m+[m[32mPaciente_idPaciente int not null,[m
[32m+[m[32mReceitaMedica_idReceitaMedica int not null,[m
[32m+[m[32mprimary key (idConsulta),[m
[32m+[m[32mforeign key (Medico_idMedico) references tbMedico (idMedico),[m
[32m+[m[32mforeign key (Paciente_idPaciente) references tbPaciente (idPaciente),[m
[32m+[m[32mforeign key (ReceitaMedica_idReceitaMedica) references tbReceitaMedica (idReceitaMedica)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mdesc tbMedico;[m
[32m+[m[32mdesc tbPaciente;[m
[32m+[m[32mdesc tbReceitaMedica;[m
[32m+[m[32mdesc tbConsulta;[m
\ No newline at end of file[m
[1mdiff --git a/dbJogo.sql b/dbJogo.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..63cf7b4[m
[1m--- /dev/null[m
[1m+++ b/dbJogo.sql[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32mdrop database dbjogos;[m
[32m+[m
[32m+[m[32mcreate database dbjogos;[m
[32m+[m
[32m+[m[32muse dbjogos;[m
[32m+[m
[32m+[m[32mcreate table tbEquipes([m
[32m+[m[32mcodEquipe int not null auto_increment,[m
[32m+[m[32mprimary key codEquipe[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbJogador([m
[32m+[m[32mcodJogador int not null auto_increment,[m
[32m+[m[32mnome varchar(45),[m
[32m+[m[32mcodEquipe int not null,[m
[32m+[m[32mprimary key codJogador,[m
[32m+[m[32mforeign key (codEquipe) references tbEquipes (codEquipe)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbTecnico([m
[32m+[m[32mcodtecnico int not null auto_increment,[m
[32m+[m[32mnome varchar(45),[m
[32m+[m[32mfuncao varchar(100),[m
[32m+[m[32mcodEquipe int not null,[m
[32m+[m[32mprimary key codEquipe,[m
[32m+[m[32mforeign key (codEquipe) references tbEquipes (codEquipe)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbCidade([m
[32m+[m[32mcodCidade int not null auto_increment,[m
[32m+[m[32mnome varchar(35),[m
[32m+[m[32mcodEquipe int not null,[m
[32m+[m[32mprimary key codEquipe,[m
[32m+[m[32mforeign key (codEquipe) references tbEquipes (codEquipe)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mcreate table tbJogo([m
[32m+[m[32mcodJogo int not null auto_increment,[m
[32m+[m[32mcodEquipe_casa varchar(45),[m
[32m+[m[32mcodEquipe_visitante varchar(45),[m
[32m+[m[32mpontos_casa int,[m
[32m+[m[32mpontos_visitante int,[m
[32m+[m[32mdata date,[m
[32m+[m[32mcodEquipe int not null,[m
[32m+[m[32mprimary key codJogo,[m
[32m+[m[32mforeign key (codEquipe) references tbEquipes (codEquipe)[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mdesc tbEquipe;[m
[32m+[m[32mdesc tbJogador;[m
[32m+[m[32mdesc tbTecnico;[m
[32m+[m[32mdesc tbCidade;[m
[32m+[m[32mdesc tbJogo;[m
\ No newline at end of file[m
[1mdiff --git a/dbLoja.sql b/dbLoja.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..31e1e05[m
[1m--- /dev/null[m
[1m+++ b/dbLoja.sql[m
[36m@@ -0,0 +1,66 @@[m
[32m+[m[32mdrop database dbLoja;[m
[32m+[m
[32m+[m[32mcreate database dbLoja;[m
[32m+[m
[32m+[m[32muse dbLoja;[m
[32m+[m
[32m+[m
[32m+[m[32mcreate table tbFuncionarios([m
[32m+[m[32mcodFunc int not null au