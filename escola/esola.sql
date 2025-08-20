CREATE TABLE alunos (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR(100) NOT NULL,
  	cidade VARCHAR(60) NOT NULL,
  	nascimento DATE NOT NULL
);

CREATE TABLE cursos (
  	id SERIAL PRIMARY KEY,
  	titulo VARCHAR(100) NOT NULL UNIQUE,
  	area VARCHAR(40)  NOT NULL,
  	carga_horas INTEGER NOT NULL
);

CREATE TABLE turmas (
  	id SERIAL PRIMARY KEY,
  	FK_curso_id INTEGER NOT NULL REFERENCES cursos(id),
  	ano INTEGER NOT NULL,
  	semestre INTEGER NOT NULL
);

CREATE TABLE matriculas (
  	id SERIAL PRIMARY KEY,
  	FK_aluno_id INTEGER NOT NULL REFERENCES alunos(id),
  	FK_turma_id INTEGER NOT NULL REFERENCES turmas(id),
  	data DATE NOT NULL,
  	status VARCHAR(20) NOT NULL
);

CREATE TABLE avaliacoes (
  	id SERIAL PRIMARY KEY,
  	FK_matricula_id INTEGER NOT NULL REFERENCES matriculas(id),
  	tipo VARCHAR(20) NOT NULL,
  	nota NUMERIC(4,1) NOT NULL
);