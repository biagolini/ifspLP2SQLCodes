# Client Data Processor

Este projeto é uma aplicação Spring Boot que processa dados de clientes a partir de arquivos CSV e JSON, aplica regras de negócio e expõe os dados por meio de uma API RESTful. A aplicação utiliza o gerenciador de dependências Maven.

## Contexto do projeto

Este projeto faz parte da avaliação final da disciplina Linguagem de Programação II, do curso Tecnologia em Análise e Desenvolvimento de Sistemas, ministrada no Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - Câmpus São Paulo. A disciplina foi cursada no primeiro semestre de 2023. O objetivo deste projeto é integrar os conhecimentos adquiridos durante a disciplina, aplicando os conceitos de desenvolvimento de aplicações e serviços web com a linguagem Java. Além disso, busca-se demonstrar a compreensão dos fundamentos de arquiteturas de aplicações web e a utilização de ambientes de desenvolvimento integrado.

## Lista de tabelas

### Dados principais dos usuários

1. tblLogin: Contém informações de login dos usuários, como nome de usuário e senha.
2. tblPhoneNumber: Contém os números de telefone dos usuários e seus respectivos tipos.
3. tblPicture: Contém URLs das imagens dos usuários em diferentes tamanhos (grande, médio, miniatura).
4. tblUser: Contém informações pessoais dos usuários, como nome, endereço, e-mail e data de nascimento.

### Tabelas auxiliares (Enum-like)

1. tblTypeGender: Contém os tipos de gênero (M, F, Não Declarado).
2. tblTypeLocation: Contém os tipos de localizações (Especial, Normal, Trabalhoso).
3. tblTypeLogin: Contém os tipos de login (Regular, Admin).
4. tblTypeNationality: Contém as nacionalidades e suas respectivas siglas.
5. tblTypePhoneNumber: Contém os tipos de números de telefone (Móvel, Casa, Trabalho, Outro).
6. tblTypeRegion: Contém os tipos de regiões (Norte, Nordeste, Centro-Oeste, Sudeste, Sul).
7. tblTypeState: Contém os estados e suas respectivas siglas.
8. tblTypeTimezone: Contém os fusos horários e suas descrições.

## Repositórios relacionados

- [Banco de dados](https://github.com/biagolini/ifspLP2SQLCodes): Repositório com os scripts SQL utilizados para criar e configurar o banco de dados MySQL, que armazena os dados processados pela aplicação.
- [Backend](https://github.com/biagolini/ifspLP2Backend): Repositório responsável pelo backend do projeto, contendo os códigos relacionados à API RESTful desenvolvida em Spring Boot.
- [Frontend](https://github.com/biagolini/ifspLP2Frontend): Repositório contendo o frontend do projeto, desenvolvido em Angular, que se integra com a API RESTful apresentada no backend.
