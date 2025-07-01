# 🎬 Netflix Titles Data Analysis & Dashboard

## 📌 Project Overview

This project analyzes Netflix’s global content library to uncover patterns in content type, release timelines, regional production trends, and audience targeting. It showcases practical data wrangling, normalization, and storytelling through:

- **Excel** for data cleaning and structuring  
- **SQL (MS SQL Server)** for transformation and modeling  
- **Power BI** for interactive dashboard creation

> 📁 Explore the repository structure and insights from raw ingestion to polished visualization.

---

## 📂 Repository Structure

```
Netflix-Data-Project/
│
├── data_raw/                # Unprocessed dataset
│   └── netflix_titles_RAW.csv
│
├── data_cleaned/            # Cleaned and structured files
│   ├── netflix_titles_CLEANED.xlsx
│   ├── Cast.csv
│   ├── Country.csv
│   ├── Directors.csv
│   ├── Listed in.csv
│   └── Descrption.csv
│
├── sql_scripts/             # SQL transformation logic
│   └── Unpivot_tables.sql
│
├── documentation/           # Query walkthroughs and results
│   └── Results.md
│
├── dashboard/               # Power BI dashboard file
│   └── Netflix Data Project.pbix
│
├── images/                  # Dashboard screenshots
│   ├── dashboard_overview.png
│   ├── single_title_view.png
│   └── regional_trends.png
│
└── README.md                # Project summary and walkthrough
```

---

## 🧾 Dataset Summary

- **Source**: [Kaggle – Netflix Titles](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Format**: CSV (raw), Excel (cleaned), SQL, PBIX
- **Total Records**: ~8,800
- **Key Columns**:  
  `show_id`, `title`, `type`, `director`, `cast`, `country`, `date_added`, `release_year`, `rating`, `duration`, `listed_in`, `description`

---

## 🧹 Data Cleaning (in Excel)

**Location**: [`data_cleaned/netflix_titles_CLEANED.xlsx`](./data_cleaned/netflix_titles_CLEANED.xlsx)

The raw dataset was cleaned and structured in Excel before exporting key attributes to CSVs for SQL processing.

### ✨ Steps Taken:
1. **Trimmed Whitespace** in `title`, `cast`, `director`, etc.
2. **Split Duration Field** into `duration_value` and `duration_type` (e.g., "90 min" → "90", "min")
3. **Replaced Blanks with `NULL`** for uniformity
4. **Removed Duplicates** by `show_id`
5. **Eliminated Blank Rows**
6. **Split Fields** like `cast`, `director`, `country`, and `listed_in` into separate multi-column structures

> 📁 Cleaned sub-files for import to SQL:
- `Cast.csv`  
- `Country.csv`  
- `Directors.csv`  
- `Listed in.csv`  
- `Descrption.csv`

---

## 🧱 SQL Transformation & Modeling

**Script File**: [`sql_scripts/Unpivot_tables.sql`](./sql_scripts/Unpivot_tables.sql)  
**Query Reference**: [`documentation/Results.md`](./documentation/Results.md)

### 🛠️ Key Processes:
- Imported cleaned `.csv` files into SQL Server
- Linked all tables via `show_id`
- Used `UNPIVOT` to flatten multivalue fields (e.g., `cast_1` to `cast_50`)
- Removed `'null'` entries to reduce noise and ensure model accuracy
- Created normalized views to feed the Power BI dashboard

🧾 **Tables Created via Unpivoting**:
| New Table              | Unpivoted From        |
|------------------------|------------------------|
| `Netflix_cast`         | `Cast.csv`             |
| `Countries_released`   | `Country.csv`          |
| `Netflix_directors`    | `Directors.csv`        |
| `Netflix_listedin`     | `Listed in.csv`        |

---

## 📊 Power BI Dashboard

**File**: [`dashboard/Netflix Data Project.pbix`](./dashboard/Netflix%20Data%20Project.pbix)

An interactive Power BI dashboard was built to explore trends and patterns within the Netflix catalog.

### 🔍 Dashboard Highlights

#### 1. **Content Over Time**
- Peak release years: 2017–2019
- Drop in 2020–2021 likely linked to COVID-19 impacts

#### 2. **Ratings Breakdown**
- Dominated by `TV-MA`, `TV-14`, `R`

#### 3. **Top Genres**
- International Movies, Dramas, Comedies lead

#### 4. **Regional Distribution**
- Most content from: U.S., India, UK, Canada, France

#### 5. **Interactive Drill-Through**
- Click to view detailed stats per show (cast, rating, description)

#### 6. **Genre by Country**
- Viewer preference insights:
  - 🇮🇳 India: Romance & International
  - 🇺🇸 U.S.: Documentaries & Comedies
  - 🇳🇬 Nigeria & 🇬🇧 UK: Comedy & Dramas

---

## 💡 Key Takeaways

This project highlights how a raw entertainment dataset can be transformed into a strategic decision-support tool. From Excel to SQL to Power BI, it reflects core data analyst competencies:
- Structured data modeling
- Normalization with SQL
- Visual storytelling for business decisions

---

## 🧰 Tools & Skills

- **Excel** – Data cleaning and structuring
- **SQL (MS SQL Server)** – Normalization and transformation
- **Power BI** – Interactive dashboards, DAX formulas
- **DAX** – Custom measures and drill-down interactivity
- **Data Modeling** – UNPIVOT, relationship building, join logic

---

## 📎 Related Files

- [`Results.md`](./documentation/Results.md) – All SQL queries and final result snapshots
- [`Unpivot_tables.sql`](./sql_scripts/Unpivot_tables.sql) – Complete SQL transformation logic
- [`Netflix_titles_CLEANED.xlsx`](./data_cleaned/netflix_titles_CLEANED.xlsx) – Cleaned base dataset

---


---

## 🧭 How to Explore This Project

To explore and interact with the Netflix Data Project:

1. **Start with the Cleaned Data**
   - Open `data_cleaned/netflix_titles_CLEANED.xlsx` to understand the structured dataset.
   - Review supporting files like `Cast.csv`, `Country.csv`, etc., also in the `data_cleaned/` folder.

2. **Examine SQL Logic**
   - Open `sql_scripts/Unpivot_tables.sql` to see how complex multivalue fields (cast, country, etc.) were normalized.
   - Dive into `documentation/Results.md` to view the unpivot queries and purpose behind each SQL table.

3. **Open the Dashboard**
   - Load the `Netflix Data Project.pbix` file in Power BI Desktop.
   - Use filters, slicers, and drill-through features to interact with trends by genre, country, rating, and year.

4. **View Visual Output**
   - Check the `images/` folder for key dashboard screenshots if you don't have Power BI installed.

5. **Understand the Workflow**
   - The README itself outlines the entire pipeline from data cleaning to dashboard delivery.
   - Each component (Excel, SQL, Power BI) contributes to turning raw data into business insights.

> 🔁 Clone the repo, load the Power BI file, or walk through the SQL and Excel files to experience the full journey of this data analysis project.



---

## 🚀 Conclusion

This project highlights how raw streaming data can be transformed into business intelligence. By combining Excel, SQL, and Power BI, we gain deep insight into Netflix’s content distribution strategy, audience targeting, and global content trends.

---

## 📎 Screenshots
![Dashboard Overview](![Dashboard Page 1](https://github.com/user-attachments/assets/cd04a830-6e1e-4e7b-8ba9-0d21ce2d6151))  
![Single Title View](![Dashboard Page 2](https://github.com/user-attachments/assets/a43283a3-5b60-43f4-8fb9-53a065cf2d7b))  
![Regional Trends](![Dashboard Page 3](https://github.com/user-attachments/assets/e70af675-360c-4fc5-ba7f-994509fb9939))

---


## 📬 Contact

**Obot Monday**  
📧 Email: [Obotmonday680@gmail.com](mailto:Obotmonday680@gmail.com)




