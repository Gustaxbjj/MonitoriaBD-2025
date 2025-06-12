create database hospital;
use hospital;


create table prontuario(
id int primary key,
historico text
);

create table paciente(
id int primary key,
dt_nasc date,
nome varchar(50),
FK_id_prontuario int,
foreign key(FK_id_prontuario) references prontuario(id)
);

create table medicos(
id int primary key,
crm int,
nome varchar(50)
);

create table consultas(
id int primary key,
data date,
hora time
);

create table especialidades(
id int primary key,
nome varchar(50),
FK_id_paciente int,
FK_id_medicos int,
foreign key(FK_id_paciente) references paciente(id),
foreign key(FK_id_medicos) references medicos(id)
);

create table medicosEspecialidades(
FK_id_medicos int,
FK_id_especialidades int,
foreign key(FK_id_medicos) references medicos(id),
foreign key(FK_id_especialidades) references especialidades(id)
)