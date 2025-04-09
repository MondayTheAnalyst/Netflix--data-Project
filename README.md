# Netflix--data-Project

# 🎬 Netflix Titles Data Analysis & Dashboard

## 🧾 Project Summary

This project analyzes Netflix’s content library to uncover patterns in show types, release trends, ratings, and global availability. The end-to-end workflow covers data cleaning in Excel, normalization and transformation in SQL, and insightful visualization using Power BI. It demonstrates skills in data wrangling, modeling, and business intelligence storytelling — essential for real-world data analyst roles.

---

## 📂 Dataset Overview

- **Source**: [Netflix Titles Dataset - Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Data Format**: CSV (raw), Excel (cleaned), SQL, Power BI Dashboard
- **Total Records**: ~8,800 titles
- **Columns**: Title, Type (Movie/TV Show), Director, Cast, Country, Date Added, Release Year, Rating, Duration, Listedin, Description

---

## 🧹 Data Cleaning in Excel

**Cleaned File**: `netflix_titles_CLEANED.xlsx`  
**Raw File**: `netflix_titles_RAW.csv`

### ✅ Cleaning Steps Performed:

1. **Whitespace Removal** – Trimmed leading/trailing spaces in text fields like `title`, `director`, and `cast`.
2. **Duration Formatting** – Reformatted `duration` and split it into `duration` and `duration type` columns.
3. **Missing Values Handling** – Replaced all blanks with `"NULL"` for consistency.
4. **Duplicate Removal** – Removed redundant records based on `show_id`.
5. **Blank Row Removal** – Cleared out completely empty rows.


---

## 🧱 Data Modeling & Transformation in SQL

**SQL File**: `Unpivot_tables.sql`  
**Documentation**: `NETFLIX DATA QUERIES AND RESULT.docx`

### 🛠️ Key Actions:

- Imported multiple `.csv` files into SQL Server, each representing an attribute of the main Netflix dataset (netflix titles, cast, country, director, listed_in, description).
- Created structured tables linked by `show_id`.
- Removed `NULL` entries and split comma-separated values into individual rows.
- Unpivoted key fields to allow proper relationship modeling and filtering in Power BI.
- All SQL queries and query results are documented with screenshots in the `.docx` file provided.

> 📄 *Refer to `NETFLIX DATA QUERIES AND RESULT.docx` for full query breakdowns and table snapshots.*

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was built to visualize key metrics and trends from the Netflix catalog.

### 🔍 Dashboard Features:

#### 1. **Content Over Time**
- Clear spike in new content between 2016–2019.
- Drop-off in 2020–2021 likely due to production impacts from COVID-19.

#### 2. **Rating Distribution**
- `TV-MA`, `TV-14`, and `R` dominate, reflecting a focus on mature content.
  
#### 3. **Genre Popularity**
- Top categories: `International Movies`, `Dramas`, `Comedies`.
- Genre diversity showcases Netflix's global appeal.

#### 4. **Country Distribution**
- U.S. leads in content volume, followed by India, UK, Canada, and France.
- Map and bar charts highlight geographic reach.

#### 5. **Show Drill-Through**
- Clickable visual elements lead to a detailed breakdown of a specific movie or show, including cast, rating, genre, and description.

#### 6. **Genre-by-Country Analysis**
- Treemap and bar charts reveal viewer preferences by region:
  - India: International & Romantic content
  - U.S.: Documentaries, Comedies, and Dramas
  - UK & Nigeria: Comedies and International Films

---

## 🧰 Tools Used
- **Excel** – Data cleaning & preprocessing
- **SQL (MSSQL)** – Data normalization, transformation, and unpivoting
- **Power BI** – Dashboard creation and storytelling
- **DAX** – Custom measures and interactivity in Power BI

---

## 🚀 Conclusion

This project highlights how raw streaming data can be transformed into business intelligence. By combining Excel, SQL, and Power BI, we gain deep insight into Netflix’s content distribution strategy, audience targeting, and global content trends.

---

## 📎 Screenshots
![Dashboard Overview](![Dashboard Page 1](https://github.com/user-attachments/assets/cd04a830-6e1e-4e7b-8ba9-0d21ce2d6151))  
![Single Title View](![Dashboard Page 2](https://github.com/user-attachments/assets/a43283a3-5b60-43f4-8fb9-53a065cf2d7b))  
![Regional Trends](![Dashboard Page 3](https://github.com/user-attachments/assets/e70af675-360c-4fc5-ba7f-994509fb9939))

---

## 📁 Project Files
- `netflix_titles_RAW.csv`
- `netflix_titles_CLEANED.xlsx`
- `Unpivot_tables.sql`
- `NETFLIX DATA QUERIES AND RESULT.docx`
- `Netflix Data Project.pbix`

---

## 📬 Contact

If you have any questions feel free to reach out!
Email: Obotmonday680@gmail.com





