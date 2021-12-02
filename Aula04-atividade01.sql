CREATE TABLE curso(
	id INTEGER,
	nome VARCHAR(255)
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'HTML');

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;