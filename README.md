# 🎬 Netflix Titles Data Analysis & Dashboard

## 📌 Project Overview

This project explores Netflix’s global content library to uncover trends in content types, release timelines, maturity ratings, regional availability, and genre diversity. It showcases the end-to-end workflow of a data analyst — from cleaning and modeling to insight delivery — using:

- **Excel** for initial data structuring  
- **SQL (MS SQL Server)** for normalization and transformation  
- **Power BI** for interactive visual storytelling

---

## 📂 Repository Structure

```
Netflix-Data-Project/
│
├── data_raw/
│   └── netflix_titles_RAW.csv
│
├── data_cleaned/
│   ├── netflix_titles_CLEANED.xlsx
│   ├── Cast.csv
│   ├── Country.csv
│   ├── Directors.csv
│   ├── Listed in.csv
│   └── Descrption.csv
│
├── sql_scripts/
│   └── Unpivot_tables.sql
│
├── documentation/
│   └── Results.md
│
├── dashboard/
│   └── Netflix Data Project.pbix
│
├── images/
│   ├── dashboard_overview.png
│   ├── single_title_view.png
│   
│
└── README.md
```

---

## 🧾 Dataset Summary

- **Source**: [Kaggle – Netflix Titles](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Format**: CSV (raw), Excel (cleaned), SQL, Power BI
- **Total Records**: ~8,800 titles
- **Columns Include**: `title`, `type`, `director`, `cast`, `country`, `release_year`, `rating`, `duration`, `listed_in`, `description`

---

## 🧹 Data Cleaning (Excel)

Performed in: [`data_cleaned/netflix_titles_CLEANED.xlsx`](./data_cleaned/netflix_titles_CLEANED.xlsx)

### ✨ Cleaning Steps:
- Trimmed whitespace in all text fields
- Split `duration` into `duration_value` and `duration_type`
- Replaced blanks with `"NULL"` for SQL compatibility
- Removed duplicate rows by `show_id`
- Restructured multi-value fields (cast, director, country, genres) into individual columns before SQL import

---

## 🧱 SQL Transformation & Modeling

**Script**: [`Unpivot_tables.sql`](./sql_scripts/Unpivot_tables.sql)  
**Documentation**: [`Results.md`](./documentation/Results.md)

### 🛠 Key Actions:
- Imported cleaned `.csv` files into SQL Server
- Used `UNPIVOT` to normalize multi-valued fields:
  - `cast_1`–`cast_50` → `Netflix_cast`
  - `country_1`–`country_12` → `Countries_released`
  - `director_1`–`director_13` → `Netflix_directors`
  - `listed_in_1`–`listed_in_3` → `Netflix_listedin`
- Removed nulls and created a relational model around `show_id`

---

## 📊 Power BI Dashboard

**File**: [`Netflix Data Project.pbix`](./dashboard/Netflix%20Data%20Project.pbix)

This interactive dashboard is divided into two analytical views:

---

### 📄 Page 1: **Overview**

This page delivers high-level KPIs and global trends:

#### 🎯 KPIs (top section)
- **🎬 Titles** – Total number of titles in the dataset  
- **📅 Peak Year** – Year with the most content released  
- **🌍 Countries** – Total number of producing countries  
- **🎥 % Movies vs TV Shows** – Share of content types

#### 📈 Charts
- **Shows Added by Date** – Area chart comparing release patterns of movies and TV shows  
- **Shows by Rating** – Bar chart showing maturity levels (`TV-MA`, `TV-14`, etc.)  
- **Top Genres** – Bar chart of most common genres globally  
- **Countries Available** – Heatmap showing Netflix’s global reach

---

### 🎬 Page 2: **Single Title View**

This page provides an interactive breakdown for any selected title.

- **Dropdown** to select a specific movie or TV show  
- **Dynamic KPIs**: 
  - `Release Year`
  - `Rating`
  - Country availability map
- **Description Box** shows synopsis from the dataset
- **Related Lists**:
  - **Genres (Listed In)**
  - **Directed By**
  - **Cast Members**

> Fields like release year, rating, and map update **only when a title is selected**, avoiding misleading default values like totals or blanks.

---

## 💡 Key Takeaways

This project demonstrates the practical journey from raw data to insight delivery. Key skills showcased:
- Normalizing multivalue fields using SQL `UNPIVOT`
- Creating a star-schema-like model in SQL for Power BI
- Designing dashboards with both **KPI storytelling** and **title-level interactivity**

---

## 🧰 Tools & Techniques Used

- **Excel** – Data cleaning, trimming, pre-splitting values
- **SQL Server** – Table creation, unpivoting, normalization
- **DAX** – Custom KPIs, filter detection, conditional logic
- **Power BI** – Modern layout, KPI cards, slicers, and drill-through

---

## 🧭 How to Explore This Project

1. **Review Cleaned Data**: Excel and CSVs in `data_cleaned/`
2. **Explore SQL Logic**: Unpivot transformations in `sql_scripts/Unpivot_tables.sql`
3. **Check Query Results**: Walkthrough in `documentation/Results.md`
4. **Open the Dashboard**: Load `.pbix` file in Power BI Desktop and interact with filters
5. **View Screenshots**: If Power BI isn’t available, preview visuals in the `images/` folder

---

## 📸 Dashboard Screenshots

| Overview Page | Single Title View | Regional Trends |
|---------------|-------------------|------------------|
| ![Overview](./images/dashboard_overview.png) | ![Single Title](./images/single_title_view.png) |

---

## 📬 Contact

**Obot Monday**  
📧 Email: [Obotmonday680@gmail.com](mailto:Obotmonday680@gmail.com)
