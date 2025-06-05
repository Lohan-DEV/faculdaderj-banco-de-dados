# Este projeto foi desenvolvido como parte da disciplina de Banco de Dados no curso de Análise e Desenvolvimento de Sistemas da UniFECAF. Ele abrange desde a análise de requisitos até a implementação do modelo físico em SQL, com foco na criação de um sistema de gerenciamento acadêmico.

🧠 Objetivo do Projeto

`Construir um banco de dados relacional para gerenciar:`

- **Alunos**

- **Professores**

- **Cursos**

- **Disciplinas**

- **Turmas**

- **Matrículas**

- **Notas**

Com isso, a instituição pode montar turmas, registrar matrículas e armazenar notas com integridade e organização.

---

📋 Levantamento de Requisitos

**1. Quais informações precisam ser armazenadas?**

- Alunos (nome, CPF, e-mail, telefone, nascimento, endereço, curso)

- Professores (nome, CPF, título, área de atuação, e-mail)

- Cursos (nome, duração em semestres, coordenador)

- Disciplinas (nome, carga horária, curso associado)

- Turmas (semestre, ano, horário, sala, disciplina e professor)

- Matrículas (aluno, turma, data)

- Notas (valor, período, matrícula associada)

---

**2. O que será feito com os dados?**

- Formar turmas

- Registrar matrículas

- Lançar notas

- Gerar relatórios de desempenho

---

**3. Como garantir que o banco atenda às regras do sistema?**

- Todas as tabelas foram criadas com chaves primárias `(PRIMARY KEY)` para garantir identificação única dos registros.

- Foram definidas chaves estrangeiras `(FOREIGN KEY)` para garantir a integridade entre os dados (ex: aluno pertence a um curso, nota pertence a uma matrícula).

- Restrições como `NOT NULL` e `UNIQUE` também foram utilizadas para evitar inconsistências.

- A estrutura normalizada facilita consultas, relatórios e manutenção futura do sistema.

---

**4. Qual o tipo de dados de cada atributo definido?**

- `INTEGER/ AUTO_INCREMEN`T para identificadores;
- `VARCHAR` para nomes, e-mails, telefones, endereços, métodos de pagamento;
- `DATE` para datas (nascimento, matrícula, pagamento);
- `DECIMAL` para valores monetários e notas;
- `FOREIGN KEY` para garantir a integridade referencial entre tabelas.

---

🖼️ Modelos Visuais

Modelo Conceitual

![Modelo Conceitual](imagens/modelo_conceitual.png)

Modelo Lógico

![Modelo Lógico](imagens/modelo_logico.png)

---

🎬 Apresentação em Vídeo

Explicação do projeto, modelos, escolhas e SQL:🔗 [Inserir link do YouTube ou LinkedIn aqui]

