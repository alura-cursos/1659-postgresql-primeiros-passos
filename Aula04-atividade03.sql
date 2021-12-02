SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT  INTO aluno (nome) VALUES ('Diogo');
INSERT  INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;

SELECT * FROM curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);


SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
   REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);


 /*  
   FOREIGN KEY (CAMPO_NA_TABELA_ORIGEM)
   REFERENCES TABELA_DESTINO (CAMPO_TABELA_DESTINO)
   		ON UPDATE OPÇÃO
		ON DELETE OPÇÃO
 */
 --  OPÇÃO (RESTRICT, CASCADE)

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,3);