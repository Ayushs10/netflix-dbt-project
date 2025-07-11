# Netflix Modern Data Stack Project 🎬📊

An end-to-end **Data Engineering project** using Netflix data that mirrors real-world ELT pipelines with modern tooling and best practices.

---

## 🚀 Project Overview

This project demonstrates a modern data stack for ingesting, transforming, and visualizing Netflix ratings data. From raw CSVs to curated dashboards, each component of the pipeline was built to reflect a scalable ELT architecture.

---

## 📊 Architecture Diagram

### Modern ELT Flow:
![ELT Architecture](https://github.com/Ayushs10/netflix-dbt-project/blob/main/arch.png?raw=true)

### dbt Workflow:
![dbt Flow](https://github.com/Ayushs10/netflix-dbt-project/blob/main/arch2.png?raw=true)

---

## ⚙️ Tech Stack

- **Amazon S3** – Raw file storage
- **Snowflake** – Cloud data warehouse
- **dbt (Data Build Tool)** – Data transformation, testing & documentation
- **Power BI / Looker Studio / Tableau** – BI and visualization

---

## 🔧 dbt Features Used

- **Layered Modeling**: `staging → intermediate → mart`
- **Jinja Macros**: Reusable SQL logic
- **Snapshots**: Track slowly changing dimensions
- **Tests**: Both generic & custom data quality tests
- **Documentation**: Auto-generated model & lineage docs
- **Version Control**: Managed in Git & GitHub

---

## 🧠 Learnings

- ELT vs ETL — when and why ELT is more scalable
- Data warehouse modeling: star schema, fact/dim separation
- Scalable SQL logic using dbt
- Deployment-ready transformation workflows
- Data quality guardrails using tests & snapshots

---

## 📈 Dashboards & Insights

### ⭐ Rating Score Distribution
![Rating Distribution](https://github.com/Ayushs10/netflix-dbt-project/blob/main/Rating_dist.png?raw=true)

### 🎥 Top 10 Highest Rated Movies
![Top 10 Movies](https://github.com/Ayushs10/netflix-dbt-project/blob/main/Top_10_movies.png?raw=true)

---

## 📁 Project Layers

| Layer      | Purpose                                      |
|------------|----------------------------------------------|
| Raw        | Load files into Snowflake from S3            |
| Staging    | Clean, type-cast, deduplicate                |
| Transform  | Apply business logic & enrichments           |
| Serving    | Expose to BI tools (Power BI, Tableau, etc.) |

---

## 📎 GitHub Repository

[🔗 View Repository](https://github.com/Ayushs10/netflix-dbt-project)

---
