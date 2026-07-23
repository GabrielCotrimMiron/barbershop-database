# 💈 Barbershop Database

<p align="center">
  <img src="docs/database-diagram.svg" alt="Diagrama Entidade-Relacionamento" width="900">
</p>

<p align="center">

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge)
![UTFPR](https://img.shields.io/badge/UTFPR-Projeto%20Acadêmico-blue?style=for-the-badge)
![License](https://img.shields.io/github/license/GabrielCotrimMiron/barbershop-database?style=for-the-badge)

</p>

Banco de dados relacional desenvolvido em **MySQL** para gerenciamento de uma barbearia.

Este projeto foi desenvolvido para a disciplina de **Banco de Dados** do curso de **Engenharia de Software** da **Universidade Tecnológica Federal do Paraná (UTFPR)**, sob orientação do **Prof. Eduardo Cotrin Teixeira**.

Seu principal objetivo é aplicar conceitos de modelagem de bancos de dados relacionais, normalização, integridade referencial e consultas SQL por meio da implementação de um sistema de gerenciamento para uma barbearia.

---

# 📑 Sumário

- [Visão Geral](#-visão-geral)
- [Funcionalidades](#-funcionalidades)
- [Modelo do Banco de Dados](#-modelo-do-banco-de-dados)
- [Resumo das Entidades](#-resumo-das-entidades)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Como Executar](#-como-executar)
- [Consultas Implementadas](#-consultas-implementadas)
- [Conceitos Aplicados](#-conceitos-aplicados)
- [Possíveis Melhorias](#-possíveis-melhorias)
- [Autores](#-autores)
- [Licença](#-licença)

---

# 📖 Visão Geral

O projeto modela e implementa um banco de dados capaz de gerenciar as principais operações de uma barbearia.

A solução contempla o cadastro de clientes, funcionários, endereços, telefones, serviços e agendamentos, utilizando chaves primárias, chaves estrangeiras e relacionamentos para garantir a consistência dos dados.

Toda a estrutura foi implementada utilizando **MySQL**, seguindo boas práticas de modelagem relacional.

---

# ✨ Funcionalidades

- Cadastro de clientes
- Cadastro de funcionários e administradores
- Gerenciamento de endereços
- Gerenciamento de telefones
- Cadastro de serviços
- Controle de agendamentos
- Controle do status dos agendamentos
- Consultas SQL utilizando relacionamentos entre tabelas

---

# 🗄 Modelo do Banco de Dados

O diagrama abaixo representa toda a estrutura implementada neste projeto.

<p align="center">
<img src="docs/database-diagram.svg" width="900">
</p>

---

# 📋 Resumo das Entidades

| Entidade | Descrição |
|----------|-----------|
| **Endereço** | Armazena os endereços utilizados por clientes e funcionários. |
| **Usuário** | Representa funcionários e administradores do sistema. |
| **Cliente** | Armazena os dados cadastrais dos clientes. |
| **Telefone** | Registra os telefones associados a clientes ou funcionários. |
| **Serviço** | Armazena os serviços oferecidos pela barbearia. |
| **Agendamento** | Controla os agendamentos realizados entre clientes e funcionários. |

---

# 📂 Estrutura do Projeto

```text
barbershop-database
│
├── docs/
│   └── database-diagram.svg
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_insert_data.sql
│   ├── 03_queries.sql
│   └── 04_drop_database.sql
│
├── LICENSE
├── README.md
└── .gitignore
```

---

# 🚀 Como Executar

## 1. Clone o repositório

```bash
git clone https://github.com/GabrielCotrimMiron/barbershop-database.git
```

---

## 2. Abra um cliente MySQL

Exemplos:

- MySQL Workbench
- DBeaver
- phpMyAdmin
- MySQL Command Line Client

---

## 3. Execute os scripts na seguinte ordem

### 01_create_database.sql

Cria o banco de dados e todas as tabelas.

### 02_insert_data.sql

Insere registros de exemplo.

### 03_queries.sql

Executa as consultas desenvolvidas para o projeto.

### 04_drop_database.sql

(Opcional) Remove o banco de dados.

---

# 🔎 Consultas Implementadas

O projeto contempla consultas SQL que demonstram diferentes operações sobre um banco de dados relacional.

As consultas implementadas são:

1. Listar clientes juntamente com seus respectivos endereços.

2. Listar clientes e serviços relacionados aos agendamentos cancelados.

3. Listar os agendamentos ativos previstos para dezembro de 2025.

4. Listar os agendamentos realizados por um funcionário específico.

5. Listar os clientes que concluíram o serviço **"Corte Masculino"**.

---

# 🧠 Conceitos Aplicados

- Modelagem de Banco de Dados Relacional
- Modelo Entidade-Relacionamento (MER)
- Normalização
- Chaves Primárias
- Chaves Estrangeiras
- Integridade Referencial
- Relacionamentos Um-para-Muitos
- SQL DDL
- SQL DML
- Consultas SQL (SELECT)
- INNER JOIN
- LEFT JOIN
- Filtros com WHERE
- Restrições UNIQUE
- ENUM

---

# 👨‍💻 Autores

**Gabriel Cotrim Miron**

Estudante de Engenharia de Software — UTFPR

GitHub: https://github.com/GabrielCotrimMiron

---

**Hugo Pessoni Batista**

Estudante de Engenharia de Software — UTFPR

---

# 🎓 Contexto Acadêmico

Este projeto foi desenvolvido como trabalho prático da disciplina de **Banco de Dados** do curso de **Bacharelado em Engenharia de Software** da **Universidade Tecnológica Federal do Paraná (UTFPR)**.

**Professor:** Eduardo Cotrin Teixeira

---

# 📄 Licença

Este projeto está licenciado sob a **MIT License**.

Consulte o arquivo `LICENSE` para mais informações.
