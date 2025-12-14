# Project - Hello DBMS+
</br>

# Project's context
/

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