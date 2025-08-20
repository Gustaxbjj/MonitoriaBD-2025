-- Liste os nomes dos alunos da cidade Recife.
SELECT nome FROM alunos WHERE cidade = 'Recife';

-- Quais cursos são da área Dados? Mostre titulo e carga_horas.
SELECT titulo,carga_horas FROM cursos WHERE area = 'Dados';
SELECT * FROM cursos;

-- Nomes dos alunos matriculados em qualquer turma do curso "SQL para Iniciantes".
SELECT a.nome FROM alunos a, matriculas m, turmas t, cursos c WHERE a.id = m.FK_aluno_id 
AND m.FK_turma_id = t.id
AND t.FK_curso_id = c.id 
AND c.titulo = 'SQL para Iniciantes';
 
-- Alunos com média >= 8.0 em pelo menos uma de suas matrículas.

SELECT a.nome FROM alunos a, matriculas m WHERE a.id = m.FK_aluno_id 
AND (SELECT AVG(nota) FROM avaliacoes av 
WHERE av.FK_matricula_id = m.id) >= 8.0;


 
-- Turmas com pelo menos 5 matrículas. Mostre id.

SELECT t.id FROM turmas t WHERE (SELECT COUNT(*) FROM matriculas m WHERE m.FK_turma_id = t.id) >= 5;



-- O curso cuja carga_horas é maior do que a média de todas as cargas.