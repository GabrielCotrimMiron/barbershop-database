# 💈 Barbershop Database

![Database Diagram](docs/database-diagram.svg)

## 📖 About the Project

**Barbershop Database** is a relational database project developed in **MySQL** for a barbershop management system.

The project was created as part of the **Database** course in the **Software Engineering** program at the **Federal University of Technology – Paraná (UTFPR)**, under the supervision of **Prof. Eduardo Cotrin Teixeira**.

Its objective is to model, implement, populate and query a relational database while applying fundamental database concepts such as normalization, primary and foreign keys, referential integrity and SQL queries.

---

## 🎯 Objectives

The database was designed to manage the main operations of a barbershop, including:

- Customer registration
- Employee registration
- Address management
- Phone records
- Service catalog
- Appointment scheduling
- Appointment status tracking

---

## 🛠 Technologies

| Technology | Purpose |
|------------|---------|
| MySQL | Database Management System |
| SQL | Database definition and manipulation language |
| DBDiagram | Entity-Relationship Diagram |

---

## 🗂 Database Structure

The database contains the following entities:

- **Address**
- **User (Employee / Administrator)**
- **Customer**
- **Phone**
- **Service**
- **Appointment**

The complete Entity-Relationship Diagram can be found below.

### Entity-Relationship Diagram

![Entity Relationship Diagram](docs/database-diagram.svg)

---

## 📁 Project Structure

```
barbershop-database/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   └── database-diagram.svg
│
└── sql/
    ├── 01_create_database.sql
    ├── 02_insert_data.sql
    ├── 03_queries.sql
    └── 04_drop_database.sql
```

### Folder Description

| Folder | Description |
|---------|-------------|
| `docs/` | Project documentation and ER diagram |
| `sql/` | SQL scripts used in the project |

---

## 🚀 Getting Started

Execute the SQL scripts in the following order:

### 1. Create the database

```sql
01_create_database.sql
```

Creates the database and all tables.

---

### 2. Insert sample data

```sql
02_insert_data.sql
```

Populates the database with sample records.

---

### 3. Execute the queries

```sql
03_queries.sql
```

Runs all SQL queries required for the project.

---

### 4. (Optional) Remove the database

```sql
04_drop_database.sql
```

Deletes the database from the server.

---

## 🔎 Implemented Queries

The project includes SQL queries demonstrating different database operations, including:

- Retrieve customers and their addresses
- List canceled appointments and related services
- Retrieve active appointments scheduled for December 2025
- Find appointments handled by a specific employee
- Identify customers who completed a specific service

---

## 📚 Database Concepts Applied

- Relational database modeling
- Entity-Relationship modeling
- Primary Keys
- Foreign Keys
- Referential Integrity
- One-to-Many Relationships
- SQL DDL
- SQL DML
- SQL SELECT
- INNER JOIN
- LEFT JOIN
- Filtering with WHERE
- Data ordering and selection

---

## 👨‍💻 Authors

- Gabriel Cotrim Miron
- Hugo Pessoni Batista

---

## 📄 Academic Information

This project was developed as part of the **Database** course of the **Bachelor's Degree in Software Engineering** at **UTFPR (Federal University of Technology – Paraná)**.

**Professor:** Eduardo Cotrin Teixeira

---

## 📜 License

This project is available under the MIT License.
