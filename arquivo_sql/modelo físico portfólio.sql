create database faculdade_rj;
use faculdade_rj;

CREATE TABLE Curso (
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    duracao_semestres INT NOT NULL,
    coordenador VARCHAR(100)
    );
    ALTER TABLE Curso MODIFY COLUMN duracao_semestres INT NOT NULL;

CREATE TABLE Aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    endereco TEXT NOT NULL,
    id_curso INT ,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
    );
    
CREATE TABLE Professor (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    titulacao VARCHAR(50),
    area_atuacao VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
    );
    
CREATE TABLE Disciplina (
	id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
    );
    
CREATE TABLE Turma (
	id_turma INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    semestre INT NOT NULL,
    ano INT NOT NULL,
    horario VARCHAR(50),
    sala VARCHAR(50),
    id_disciplina INT,
    id_professor INT,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
    );
    
CREATE TABLE Matricula (
	id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    data_matricula DATE NOT NULL,
    id_aluno INT,
    id_turma INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
    );
    
CREATE TABLE Nota (
	id_nota INT AUTO_INCREMENT PRIMARY KEY,
    nota DECIMAL(4,2) NOT NULL,
    periodo VARCHAR(20) NOT NULL,
    id_matricula INT,
    FOREIGN KEY (id_matricula) REFERENCES Matricula(id_matricula)
    );
    
INSERT INTO Curso (id_curso, nome, duracao_semestres, coordenador) VALUES
(1, 'Ciência da Computação', 8, 'Dr. Carlos Silva'),
(2, 'Engenharia Civil', 10, 'Dra. Ana Souza'),
(3, 'Administração', 6, 'Prof. Marcos Lima');

INSERT INTO Disciplina (nome, carga_horaria, id_curso) VALUES
('Banco de Dados', 60, 1),
('Programação Orientada a Objetos', 80, 1),
('Cálculo Estrutural', 90, 2),
('Marketing Digital', 45, 3);

INSERT INTO Professor (nome, cpf, titulacao, area_atuacao, email) VALUES
('Dr. Carlos Silva', '12598785710', 'Doutor', 'Ciência da Computação', 'drcarlos.faculdaderj@gmail.com'),
('Dra. Anaa Souza', '18767458100', 'Mestre', 'Engenharia Civil', 'draaansouza.faculdaderj@gmail.com'),
('Prof. Marcos Lima', '18626862700', 'Estagiário', 'Administração', 'marcoslimaprof.faculdaderj@gmail.com');

INSERT INTO Aluno (nome, cpf, data_nascimento, email, telefone, endereco, id_curso) VALUES
('Felipe Costa', '11122233344', '2000-05-15', 'felipe@email.com', '(21) 99999-8888','Rua dos Garimpeiros, 21', 1),
('Mariana Almeida', '55566677788', '1999-08-20', 'mariana@email.com', '(11) 97777-1234','Rua Lapitadores, 20', 3),
('Hanna Dâmaris', '15748764700', '2007-07-02', 'hannadamaris@gmail.com', '(21) 99458-7455', 'Rua do Ouro, 25', 2);

INSERT INTO Turma (id_turma, codigo, semestre, ano, horario, sala, id_disciplina, id_professor) VALUES
(10, 'BD-2023-1', 1, 2023, 'Segunda 14h-16h', 'Sala 101', 1, 1),
(11, 'POO-2023-1', 1, 2023, 'Quarta 10h-12h', 'Sala 205', 2, 2),
(12, 'MARK-2023-2', 2, 2023, 'Sexta 19h-21h', 'Sala 302', 3, 3);

INSERT INTO Matricula (id_matricula, id_aluno, id_turma, data_matricula) VALUES
(3004, 1, 10, '2023-01-10'),
(3005, 2, 12, '2023-01-10'),
(3006, 3, 11, '2023-06-15');

INSERT INTO Nota (id_matricula, nota, periodo) VALUES
(3004, 8.5, '2023-1'),
(3005, 7.0, '2023-1'),
(3006, 9.2, '2023-2');
