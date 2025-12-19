
# Hello DBMS+

## Monitoring scientifique

### A. Qu’est-ce qu’une donnée ? Sous quelle forme peut-elle se présenter ?

Une donnée est une information brute, un fait élémentaire qui peut être collecté, stocké et traité. C'est la représentation d'une observation, d'une mesure ou d'un événement.

Types de données courants :

- Données numériques : nombres entiers (42, -7) ou décimaux (3.14). Elles représentent des quantités, des mesures ou des statistiques.
- Données textuelles : mots, phrases, documents (noms, adresses, descriptions, commentaires, etc.).
- Données booléennes : prennent deux valeurs (vrai/faux, oui/non, 1/0).
- Données temporelles : dates et heures (ex. 15/11/2025, 14:30).
- Données multimédias : images, vidéos, audio, animations — souvent volumineuses et nécessitant un traitement spécifique.
- Données géographiques : coordonnées GPS, adresses, cartes.
- Données structurées vs non structurées :
  - Structurées : organisées en tableaux, bases de données (colonnes/lignes).
  - Non structurées : emails, publications sur les réseaux sociaux, documents libres.

### B. Critères de mesure de la qualité des données

La qualité des données est essentielle pour garantir des analyses fiables. Principaux critères :

#### L'exactitude (justesse)

- Mesure la correspondance entre la donnée et la réalité.
- Exemple : enregistrer 32 ans au lieu de 35 ans est une erreur d'exactitude.

#### La complétude

- Vérifie l'absence de valeurs manquantes indispensables.
- Exemple : 30 % des numéros de téléphone manquants.

#### La cohérence

- Données non contradictoires au sein d'une même source ou entre sources.
- Exemple : une date de naissance postérieure à la date d'embauche est incohérente.

#### La validité (conformité)

- Respect des formats, types et règles métiers.
- Exemple : un code postal français doit être composé de 5 chiffres.

#### L'actualité (fraîcheur)

- Données à jour pour la période concernée.
- Exemple : utiliser des prix de 2015 pour une étude 2025 est problématique.

#### L'unicité (absence de doublons)

- Éviter les enregistrements redondants qui faussent les analyses.

#### La traçabilité (lignage)

- Connaître l'origine et l'historique des données.

#### L'intégrité

- Garantir que les données n'ont pas été altérées ou corrompues.

### C. Data Lake, Data Warehouse et Lake House — définitions et comparaison

#### Définitions rapides

- Data Warehouse : système de stockage centralisé de données structurées, nettoyées et organisées selon un schéma (schema-on-write). Optimisé pour la BI et le reporting (ETL).
- Data Lake : stockage massif de données brutes (structurées, semi-structurées, non struct.). Schéma appliqué à la lecture (schema-on-read). Généralement ELT.
- Lake House : architecture hybride combinant stockage unifié et garanties (transactions ACID, gouvernance) pour supporter BI et ML.

#### Tableau comparatif

| Critère               | Data Warehouse                         | Data Lake                             | Lake House                         |
|-----------------------|----------------------------------------|---------------------------------------|------------------------------------|
| Types de données      | Structurées uniquement                 | Tous types                            | Tous types                         |
| Schéma                | Schema-on-Write                        | Schema-on-Read                        | Mixte (flexible)                   |
| Traitement            | ETL                                    | ELT                                   | ELT optimisé                       |
| Utilisateurs          | Analystes métier, BI                   | Data Scientists, Data Engineers       | Tous profils                       |
| Coût de stockage      | Élevé                                  | Faible                                | Moyen                              |
| Performance           | Très élevée pour requêtes analytiques  | Variable                              | Élevée                             |
| Gouvernance           | Forte                                  | Faible (risque de "data swamp")     | Forte                              |

Schémas illustratifs et exemples HTML (si nécessaires) : voir `big_project/index.html` ou `big_project/data_architectures_comparison.html` (si présents).

Points clés :

- Data Warehouse : adapté aux rapports répétitifs et nécessitant une forte gouvernance.
- Data Lake : adapté à l'exploration, au ML et aux gros volumes variés.
- Lake House : solution moderne unifiant agilité et gouvernance.

### D. Systèmes de gestion de bases de données (SGBD)

Un SGBD (DBMS) est un logiciel pour créer, gérer, manipuler et sécuriser des bases de données. Il sert d'interface entre les applications/utilisateurs et les données.

Fonctions principales :

- Stockage et organisation
- Manipulation des données (SQL, API)
- Sécurité et gestion des droits
- Intégrité et contraintes
- Gestion de la concurrence
- Sauvegarde et récupération
- Optimisation des requêtes (index, plans d'exécution)

### E. Bases de données relationnelles vs non relationnelles


#### Relationnelle

- Données organisées en tables (lignes/colonnes) reliées par clés.
- Langage : SQL.
- Exemples : MySQL, PostgreSQL, Oracle.
- Cas d'usage : banques, e-commerce, ERP, systèmes de réservation.

#### Non relationnelle (NoSQL)

- Stockage flexible sans schéma fixe (documents JSON, clé-valeur, graphe).
- Exemples : MongoDB, Redis, Cassandra, Neo4j.
- Cas d'usage : réseaux sociaux, applications temps réel, IoT, Big Data.

Choix :

- Relationnelle : cohérence stricte (ACID), structure rigide.
- NoSQL : scalabilité, flexibilité, volumes massifs.

### F. Clé primaire et clé étrangère


#### Clé primaire (Primary Key - PK)

- Identifiant unique d'une ligne dans une table.
- Propriétés : unique, non nulle, stable.

Exemple : `id_etudiant` dans la table `etudiants`.

#### Clé étrangère (Foreign Key - FK)

- Champ qui référence la clé primaire d'une autre table, établissant une relation.
- Propriétés : peut être nulle, peut se répéter, assure l'intégrité référentielle.

Exemple : `id_etudiant` dans la table `inscriptions` pointe vers `etudiants(id_etudiant)`.

---

## Project's context

<!-- Section à compléter selon le contexte du projet -->
