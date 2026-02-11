# College Knowledge Graph using Neo4j

## Overview
This project demonstrates how to model an academic ecosystem using a Neo4j graph database. It represents students, courses, professors, and departments as connected entities to simulate real-world relationships.

The project showcases graph modeling, ontology thinking, and Cypher-based relationship querying.

---

## Entities (Nodes)

- Student
- Course
- Professor
- Department

Each entity contains properties such as names and academic attributes.

---

## Relationships

- ENROLLED_IN → Student → Course
- TEACHES → Professor → Course
- OFFERS → Department → Course
- SCORED → Student → Course (with grade metadata)

---

## Features

✔ Graph-based academic modeling  
✔ Ontology-driven schema design  
✔ Relationship traversal queries  
✔ Knowledge graph analytics  
✔ Neo4j visualization  

---

## Example Queries

- Find which professor teaches a student
- Identify classmates sharing courses
- View department offerings
- Display relationship network

---

## Tools Used

- Neo4j Aura (Graph Database)
- Cypher Query Language

---


---

## Learning Outcomes

This project demonstrates:

- Knowledge graph modeling
- Graph ontology design
- Relationship-based querying
- Domain-to-graph mapping

---

## Author

Built as a Neo4j knowledge graph learning project.



