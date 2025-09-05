SELECT a.nome, m.curso FROM alunos a inner join matriculas m on a.id_aluno = m.id_aluno; 

SELECT p.nome, d.nome FROM disciplinas d inner join professores p on d.id_professor = p.id_professor WHERE d.nome = 'Física' ;

#Exercício 1 – Listar alunos com seus cursos
#Mostre o nome do aluno, idade e o curso que ele está matriculado.
SELECT a.nome, a.idade, m.curso FROM alunos a inner join matriculas m on a.id_aluno = m.id_aluno;

#Exercício 3 – Filtrar por professor
#Mostre todos os alunos que têm aula com o professor "Dr. Costa".

SELECT a.nome, p.nome AS professor FROM alunos a INNER JOIN matriculas m ON a.id_aluno = m.id_aluno
INNER JOIN disciplinas d ON d.id_disciplina = m.id_disciplina 
INNER JOIN professores p ON p.id_professor = d.id_professor WHERE p.nome = 'Dr. Costa';

#Exercício 4 – Contagem de alunos por curso
#Mostre o nome do curso e quantos alunos estão matriculados nele.

#Exercício 5 – Alunos com mais de uma matrícula
#Liste os alunos que estão matriculados em mais de um curso, mostrando nome do aluno e quantidade de cursos.

#Exercício 6 – Média de idade por professor
#Mostre a média de idade dos alunos que têm aula com cada professor, mostrando professor e média de idade

#Exercício 7 – Alunos e semestre
#Liste alunos com nome, curso e semestre, mas apenas os que estão no semestre 2.