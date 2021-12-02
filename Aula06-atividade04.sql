-- COUNT - Retorna a quantidade de registros
-- SUM   - Retorna a soma dos registros
-- MAX   - Retorna o maior valor dos registros
-- MIN   - Retorna o menor valor dos registros
-- AVG   - Retorna a média dos registros

SELECT * 
	FROM funcionarios;
	
SELECT COUNT(id) 
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id)
	FROM funcionarios;

SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id)
	FROM funcionarios;
	
SELECT COUNT(id),
	   SUM(id),
	   MAX(id),
	   MIN(Id),
	   ROUND(AVG(id),0)
	FROM funcionarios;