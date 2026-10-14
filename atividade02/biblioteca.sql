
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL
);

CREATE TABLE emprestimo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    livro_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (livro_id) REFERENCES livro(id)
);


INSERT INTO aluno (nome, email, curso)
VALUES ('Maria Silva', 'maria@email.com', 'Informática');


INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ('Dom Casmurro', 'Machado de Assis', 1899);

INSERT INTO emprestimo
(aluno_id, livro_id, data_emprestimo, data_devolucao)
VALUES
(1, 1, '2026-10-06', NULL);

SELECT * FROM aluno;
SELECT * FROM livro;
SELECT * FROM emprestimo;

SELECT
    aluno.nome

use biblioteca;

ALTER TABLE livro
ADD CONSTRAINT uk_livro UNIQUE (livro);