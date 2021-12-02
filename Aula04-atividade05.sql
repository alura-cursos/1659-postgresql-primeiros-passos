SELECT * FROM aluno;

SELECT * FROM curso;


SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id;
  
SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT aluno.nome,
	   curso.nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno,
	   curso.nome as curso
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno_nome,
	   curso.nome as curso_nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;