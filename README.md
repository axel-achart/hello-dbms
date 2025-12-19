# Hello DBMS+

## Veille Technologique
A. Une donnée est une *observation* **dénuée de sens** que l'on peut **stocker, transformer, généraliser, centraliser** puis **exploiter.**
Elle peut se présenter sous n'importe quel forme de mesure.

B. Les critères principaux sont **l’exactitude, la cohérence, la validité, l’unicité, l’intégrité et la ponctualité.**
Ces critères sont mesurables et réglementés par des standards reconnus.

C. **Un Data Lake** est une base de **données brutes**. Structure facile à aménager et peu coûteuse. Solution **abordable et flexible**. Utilisée en *Data Science*.
<br><br>**Un Data Warehouse** est une base de données centralisée qui a des **données déjà nettoyées, transformées et modélisées**. Permet de réaliser de la *BI* fiable avec des **bonnes performances**.
<br><br>**Une Lake House** est une *plateforme* de base de données qui vient faire le pont entre les technologies d'un *warehouse* et d'un *lake*. Structure la **plus flexible et fiable**, utilisée en *BI **ET** Data Science*.

***Insérer schemas***

D. Un *système de gestion de base de données* est un **outil** qui permet d'intéragir avec des bases de données et les données en elle-même. Il permet de **créer, supprimer et mettre à jour** les données de manière optimale.

E. Il existe 2 grandes familles de types de base de données.

Pour les **données structurées** (SQL) on peut utiliser des **SGBD** :<br>

 - **MySQL**, *open-source*, outil le plus connu et utilisé dans le monde.
 - **Microsoft SQL Server**, SGBD de l'environnement *Microsoft*.

Pour les **données non structurées** (NoSQL) on utilise des **SGBD** dits **NoSQL**.<br>

 - **MongoDB**, outil pour *app web*, permet d'utiliser **JSON**
 - **Neo4j**, outil qui utilise des **noeuds** et des **arêtes**.

F. Les **clés** sont des manières d'**identifier** des données et leurs valeurs dans une base de données **structurée**. <br><br> Une **clé primaire** est une **colonne** d'une table qui sert d'**identifiant** **unique** pour chaque ligne.
<br>Une **clé étrangère** permet de lier une table **étrangère**, et sa clé **primaire** à la propre **clé primaire** d'une **autre table**.

G. Les principes **ACID**
- **Atomicité** → tout ou rien. Cela signifie qu'une transaction est soit entièrement réussie, soit entièrement annulée. Par exemple, si vous transférez de l'argent d'un compte bancaire à un autre, soit l'argent est débité d'un compte et crédité sur l'autre, soit aucune des deux opérations n'est effectuée.

- **Cohérence** → les règles et les contraintes d'intégrité sont toujours respectées. Cela signifie que les transactions ne doivent pas violer les règles de la base de données, comme les contraintes de clé primaire ou les contraintes de clé étrangère.

- **Isolement** → les transactions simultanées ne s'interfèrent pas. Cela signifie que les transactions sont exécutées de manière indépendante les unes des autres, même si elles sont exécutées en même temps.

- **Durabilité** → une fois sauvegardées, les données restent en sécurité même après un crash. Cela signifie que les données confirmées restent dans la base de données même en cas de panne de courant ou de crash du système.

### Métaphore
Retirer de l'argent d'un distributeur automatique : soit l'opération entière réussit, soit rien ne change — et une fois confirmée, elle reste enregistrée.

### H. Définition de Merise et UML. Expliquez leur utilisation avec des diagrammes.

#### Merise
Merise est une méthode française pour modéliser les systèmes d'information. Elle sépare les niveaux conceptuel, logique et physique. Elle est utilisée pour la modélisation de bases de données et les grands projets informatiques structurés.

#### UML
UML (Unified Modeling Language) est un langage de modélisation universel avec des diagrammes (classe, cas d'utilisation, séquence, activité). Il est utilisé pour concevoir l'architecture logicielle et les systèmes orientés objet.

#### Exemple de Merise (Modèle Conceptuel)
```
[CLIENT] ---- (1,N) ---- [ORDER]
```

#### Diagramme de Classe UML
```
class Client {
  +id: int
  +name: string
}

class Order {
  +id: int
  +date: date
}

Client "1" -- "*" Order
```

### Métaphore
Modéliser avec Merise ou UML, c'est comme créer des plans architecturaux avant de construire une maison — en s'assurant que rien ne s'effondre une fois le développement commencé.

### I. Définition de SQL. Fournir des commandes courantes et expliquer les jointures possibles.

#### Définition
SQL (Structured Query Language) est le langage standard pour gérer les bases de données relationnelles via des requêtes.

#### Commandes les plus courantes
- **SELECT** → récupérer des données
- **INSERT** → ajouter de nouvelles données
- **UPDATE** → modifier des données existantes
- **DELETE** → supprimer des données
- **CREATE TABLE / ALTER TABLE** → modifier le schéma
- **GROUP BY, ORDER BY** → agrégation et tri

#### Types de Jointures
- **INNER JOIN** → seulement les lignes correspondantes
- **LEFT JOIN** → toutes les lignes de gauche + correspondances
- **RIGHT JOIN** → toutes les lignes de droite + correspondances
- **FULL OUTER JOIN** → toutes les lignes, correspondantes ou non
- **CROSS JOIN** → toutes les combinaisons

### Métaphore
Joindre des tables, c'est comme associer une liste d'étudiants avec une liste de notes pour voir quelle note appartient à quel étudiant.


### Glossaire Simplifié
- **Atomicité** : Tout ou rien.
- **Cohérence** : Les règles et les contraintes d'intégrité sont toujours respectées.
- **Isolement** : Les transactions simultanées ne s'interfèrent pas.
- **Durabilité** : Une fois sauvegardées, les données restent en sécurité même après un crash.
- **Merise** : Méthode française pour modéliser les systèmes d'information.
- **UML** : Langage de modélisation universel avec des diagrammes.
- **SQL** : Langage standard pour gérer les bases de données relationnelles.

## Project's context


# Project - Hello DBMS+
</br>

# Project's context


</br>
</br>

# Scientific monitoring

## **A. *What is data? In what forms can it appear?***

**Technical definition**
Data is a raw fact, observation, or measurement that can be stored, processed, or analyzed. By itself, it doesn’t carry much meaning — value comes when data is contextualized, organized, or combined with other data.

**Common forms**

* **Numerical** (42, 3.14, temperatures, prices)
* **Text** (names, messages, labels)
* **Categorical** (“Premium”, “France”, “Red”)
* **Images / Videos**
* **Audio**
* **Dates**

**Metaphor (for a non-technical audience)**
Data is like grains of sand: individually, they seem insignificant. But when gathered and shaped, they form a beach — or even a sandcastle. Data becomes valuable once structured and interpreted.

---

## **B. *Give and explain the criteria for measuring data quality.***



**Core data-quality criteria**

1. **Accuracy** : the data reflects reality.
2. **Completeness** : no missing essential values.
3. **Consistency** : identical rules and formats across tables/sources.
4. **Timeliness** : data is up to date.
5. **Precision** : data is detailed enough (cents vs euros).
6. **Accessibility** : easy to access and retrieve.
7. **Traceability** : origin and transformations are known.
8. **Compliance** : respects regulations (e.g., GDPR).

**Metaphor**
Think of a phone contact list: if numbers are correct (accuracy), every contact has a number (completeness), formats follow the same structure (consistency), and changes are logged (traceability), then your contact list is high-quality.

---

## **C. *Define and compare Data Lake, Data Warehouse, and Lakehouse. Include diagrams.***



### **Data Lake**

* Stores *all* kinds of data (raw, structured, semi-structured, unstructured).
* Low-cost, highly scalable.
* Ideal for data science, ML, and experimentation.
* Risk: without proper governance, it becomes a *“data swamp.”*

### **Data Warehouse**

* Stores **clean, structured, modeled** data.
* Schema defined in advance.
* Optimized for BI dashboards and analytics.
* Ideal for stable reporting and business intelligence.

### **Lakehouse**

* Hybrid system combining lake flexibility + warehouse reliability.
* Supports BI and ML from the same platform.
* Example technologies: Databricks, Snowflake (partially).

### **ASCII Diagram (Simple)**

```
          Raw Data                    Processed Data
[Sources] -----> [Data Lake] ----------------------> [Data Warehouse]
                       \               
                        \--> [Lakehouse: Unified Storage + Analytics]
```

### **Metaphor**

* **Data Lake** = a huge lake where you pour everything (raw water).
* **Data Warehouse** = a treatment plant that provides clean, ready-to-use water.
* **Lakehouse** = a lake with filtration built in. You can draw raw or clean water whenever needed.

---

## **D. *Define database management systems (DBMS) and provide examples with illustrations.***



**DBMS (Database Management System)** is software used to store, organize, query, update, and secure data.

### **Types & Examples**

* **Relational DBMS (SQL):** MySQL, PostgreSQL, Oracle, SQL Server.
* **NoSQL DBMS:**

  * *Document* → MongoDB
  * *Key-value* → Redis
  * *Column-oriented* → Cassandra
  * *Graph* → Neo4j
* **Analytical warehouses:** Snowflake, BigQuery, Amazon Redshift.

### **Metaphor**

A DBMS is like a **librarian**:
It stores the books (data), organizes them (schema), retrieves them efficiently (queries), and ensures no book disappears (security).

### **Small Illustration**

```
   User -> [ DBMS Engine ]
    ↓
+-----------+
|  Tables   |
|   Data    |
+-----------+
```

---

## **E. *What is a relational database? What is a non-relational database? Give differences with examples.***



### **Relational Database (SQL)**

* Table-based structure (rows & columns).
* Strict schema.
* Ensures strong integrity (often ACID).
* Perfect for finance, transactions, ERP.

**Example:** A “Customers” table linked to an “Orders” table by `customer_id`.

### **Non-Relational Database (NoSQL)**

* Document-based, key-value, wide-column, or graph structures.
* Flexible schema.
* Designed for scalability and varied data formats.

**Example:** MongoDB storing different product pages with unique fields.

### **Metaphor**

* **SQL** → a well-organized Excel spreadsheet.
* **NoSQL** → a folder of dynamic, flexible notes where each page can look different.

---

## **F. *Define the concepts of foreign key and primary key.***



* **Primary Key** → a unique identifier in a table (`user_id`, `product_id`).
* **Foreign Key** → a field referencing the primary key of another table to create a relationship.

### **Metaphor**

A primary key is like your national ID number.
A foreign key is like writing that ID number on your medical file to link it back to you.

---

## **G. *What are the ACID properties?***



ACID describes the guarantees of reliable database transactions:

* **Atomicity** → all-or-nothing.
* **Consistency** → rules and integrity constraints always hold.
* **Isolation** → simultaneous transactions don’t interfere.
* **Durability** → once saved, data remains safe even after a crash.

### **Metaphor**

Withdrawing money from an ATM:
Either the whole operation succeeds, or nothing changes — and once confirmed, it stays recorded.

---

## **H. *Define Merise and UML. Explain their use with diagrams.***

### **Merise**

* A French method for modeling information systems.
* Separates **conceptual**, **logical**, and **physical** levels.
* Used for database modeling and large structured IT projects.

### **UML**

* A universal modeling language with diagrams (class, use case, sequence, activity).
* Used to design software architecture and object-oriented systems.

### **Merise Example (Conceptual Model)**
```
[CLIENT] ---- (1,N) ---- [ORDER]
```

### **UML Class Diagram**
```
class Client {
  +id: int
  +name: string
}

class Order {
  +id: int
  +date: date
}

Client "1" -- "*" Order
```

### **Metaphor**
Modeling with Merise or UML is like creating **architectural blueprints** before building a house — ensuring nothing collapses once development starts.

---

## **I. *Define SQL. Provide common commands and explain possible joins.***

### **Definition**
SQL (Structured Query Language) is the standard language for managing relational databases through queries.

### **Most common commands**
* `SELECT` → retrieve data
* `INSERT` → add new data
* `UPDATE` → modify existing data
* `DELETE` → remove data
* `CREATE TABLE` / `ALTER TABLE` → modify schema
* `GROUP BY`, `ORDER BY` → aggregation and sorting

### **Types of Joins**
* **INNER JOIN** → only matching rows
* **LEFT JOIN** → all left rows + matches
* **RIGHT JOIN** → all right rows + matches
* **FULL OUTER JOIN** → all rows, matched or not
* **CROSS JOIN** → all combinations

### **Metaphor**
Joining tables is like matching a list of students with a list of grades to see *which grade belongs to which student*.

---

## **J. *Provide clear, accessible explanations with metaphors, examples, and a simplified glossary.***

### **Guidelines applied throughout this document**

* Simple metaphors (library, ID number, water treatment).
* ASCII diagrams for visual understanding.
* Everyday-life comparisons for non-technical readers.
* Clear, human writing rather than robotic explanations.

### Ressources

Consignes du projet : [Lien vers le PDF](https://drive.google.com/file/d/1-bmoM_32Xs6CF3KwGkjzLHR33h2Dj5tU/view?usp=sharing)