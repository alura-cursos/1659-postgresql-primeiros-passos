
SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * 
	FROM funcionarios 
	ORDER BY nome
	LIMIT 5;
	
SELECT * 
	FROM funcionarios 
	ORDER BY id
	LIMIT 5
	OFFSET 3;