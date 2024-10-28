# DSLearn 
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/fabiosimplis/DEV-dscommerce-back-end/blob/main/LICENSE) 

# Sobre o projeto

DScommerce é uma aplicação back end web construída em conjunto ao curso **Java Spring Reference**, da plataforma [DevSuperior](https://devsuperior.com "Site da DevSuperior"), para estudo de domínio complexo.

O sistema consiste em uma plataforma de ensino que mantém informações de cursos, suas turmas e alunos, bem como um fórum para perguntas e respostas sobre os conteúdos do curso. Os atores do sistema podem ser alunos e professores. Há também usuários administradores, que são os únicos autorizados a cadastrar cursos e turmas.

Um curso é composto de vários “recursos”, que são grupos de conteúdos. Estes recursos podem ser trilhas de aprendizado, bônus, links externos, e o próprio fórum de perguntas e respostas do curso. Cada recurso pode conter seções, e estas seções por sua vez é que vão conter as aulas, que podem ser conteúdos em vídeo e/ou texto, ou tarefas para serem entregues pelos alunos.

Uma tarefa pode ter um peso, uma data de entrega, um número de questões e a quantidade mínima de acertos necessários para ser aceita. Quando um aluno entrega a tarefa, esta fica aguardando pelo feedback do professor, e ela pode ser aceita ou rejeitada.

Cada nova turma do curso corresponde a uma oferta ou edição deste curso, que possui uma data de início e fim. Diferentes ofertas do mesmo curso podem ter pequenas variações no conteúdo, conforme a necessidade de customização para cada turma.

## Protótipos de tela
[FIGMA](https://www.figma.com/design/p8Hawp1w5g0pCZ3h3ZsCUd/DSLearn-Bootcamp)

## Modelo conceitual
![Modelo Conceitual](https://github.com/fabiosimplis/dslearn/blob/main/assets/modelo-conceitual-com-forum.png).

# Tecnologias utilizadas
## Back end
- Java
- Spring Boot
- JPA

# Como executar o projeto

## Back end
Pré-requisitos: Java 17

```bash
# clonar repositório
git clone https://github.com/fabiosimplis/dslearn.git

# entrar na pasta do projeto back end
cd dslearn

# executar o projeto
./mvnw spring-boot:run
```

# Autor

Fábio S. S. Júnior

https://www.linkedin.com/in/fabio-simplis/
