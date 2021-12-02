SELECT * 
	FROM funcionarios;
	
SELECT nome 
	FROM funcionarios;

SELECT nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome,
	   sobrenome
	FROM funcionarios
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY 1, 2
	ORDER BY nome;
	
SELECT * 
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
	GROUP BY 1
	ORDER BY 1;