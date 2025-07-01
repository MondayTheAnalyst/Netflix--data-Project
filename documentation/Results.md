# 🧾 Netflix Data Project – SQL Modeling Summary

This document provides a strategic overview of the SQL transformation logic used to prepare the Netflix dataset for dashboard visualization. It outlines how key fields were normalized using UNPIVOT, and why each step was essential for analysis.

---

## 📥 Data Imported into SQL Server

The following cleaned CSVs were imported from `data_cleaned/`:

- `Cast.csv`
- `Country.csv`
- `Directors.csv`
- `Listed in.csv`
- `Descrption.csv`
- `netflix_titles_CLEANED.xlsx`

Each file was converted to a SQL table using `show_id` as the common key.

---

## 🔄 Data Normalization via UNPIVOT

The script `sql_scripts/Unpivot_tables.sql` was used to normalize multi-value fields by flattening them into long-format tables. This allows for proper filtering, aggregation, and relationship modeling in Power BI.

---

### 🎭 `Netflix_cast`
- **Source**: `Cast.csv`
- **Action**: Unpivoted 50 cast columns (`cast_1` to `cast_50`)
- **Why it matters**: Allows filtering by individual actor/actress
- **Used in**: Drill-through visuals and cast-specific insights

---

### 🌍 `Countries_released`
- **Source**: `Country.csv`
- **Action**: Unpivoted up to 12 country columns into one `country` field
- **Why it matters**: Enables geographic visualizations (maps, bar charts)
- **Used in**: Country distribution and genre-by-country analysis

---

### 🎬 `Netflix_directors`
- **Source**: `Directors.csv`
- **Action**: Unpivoted 13 director columns into `director`
- **Why it matters**: Supports director-level filtering and ranking
- **Used in**: Director frequency insights and detailed breakdowns

---

### 🎞️ `Netflix_listedin`
- **Source**: `Listed in.csv`
- **Action**: Unpivoted 3 genre/category fields
- **Why it matters**: Enables genre-based visualizations and filtering
- **Used in**: Treemaps, bar charts by genre, and user preference analysis

---

## 📌 Final Tables Used in Power BI

| Table Name            | Purpose                              |
|-----------------------|--------------------------------------|
| `Netflix_cast`        | Actor-level filtering and analysis   |
| `Countries_released`  | Geographic analysis and mapping      |
| `Netflix_directors`   | Director insights and aggregation    |
| `Netflix_listedin`    | Genre-based drill-down and visuals   |

---

## 🛠 File Reference

- 📄 SQL Logic: [`sql_scripts/Unpivot_tables.sql`](../sql_scripts/Unpivot_tables.sql)
- 📘 Main Guide: [`README.md`](../README.md)

> This modeling approach helped build a clean, flexible Power BI data model ready for slicing Netflix data by region, genre, cast, and more.
