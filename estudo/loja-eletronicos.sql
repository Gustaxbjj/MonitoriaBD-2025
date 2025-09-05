CREATE DATABASE escola;
USE escola;

-- Tabela de alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT
);

-- Tabela de professores
CREATE TABLE professores (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(50),
    departamento VARCHAR(50)
);

-- Tabela de disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT PRIMARY KEY,
    nome VARCHAR(50),
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de matrículas
CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    semestre INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-- Alunos
INSERT INTO alunos (id_aluno, nome, idade) VALUES
(1, 'Maria', 20),
(2, 'João', 22),
(3, 'Ana', 19),
(4, 'Carlos', 21);

-- Professores
INSERT INTO professores (id_professor, nome, departamento) VALUES
(1, 'Dr. Silva', 'Matemática'),
(2, 'Dra. Lima', 'História'),
(3, 'Dr. Costa', 'Física'),
(4, 'Dra. Fernandes', 'Química');

-- Disciplinas
INSERT INTO disciplinas (id_disciplina, nome, id_professor) VALUES
(101, 'Matemática', 1),
(102, 'História', 2),
(103, 'Física', 3),
(104, 'Química', 4);

-- Matrículas
INSERT INTO matriculas (id_matricula, id_aluno, id_disciplina, semestre) VALUES
(201, 1, 101, 1),  -- Maria - Matemática
(202, 1, 103, 2),  -- Maria - Física
(203, 2, 102, 2),  -- João - História
(204, 3, 104, 1),  -- Ana - Química
(205, 4, 101, 1);  -- Carlos - Matemática
