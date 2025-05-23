
# 🎬 IMDb Movies Portfolio Project

**Code**: `IMDb_Movies_Analysis.sql`  
**Database**: PostgreSQL  
**Dataset**: IMDb Datasets (TSV files from [IMDb Datasets](https://www.imdb.com/interfaces/))  
**Focus**: In-depth SQL analysis of global movie data — ratings, genres, creators, and trends.

---

## 📌 Project Description

This project investigates a rich dataset of IMDb movie records, excluding TV series and shorts, to uncover insights about the global film industry. The analysis focuses on trends in ratings, genres, prolific creators, and global contributions to cinema, offering a full demonstration of intermediate to advanced SQL techniques.

### Key Stages:
- Database Creation & Data Import
- Data Cleaning & Normalization
- Exploratory Data Analysis (EDA)
- Visual Report Preparation

---

## 📁 Datasets Used

IMDb files included in this analysis:

- `title.basics.tsv.gz` – Core metadata for movies
- `title.ratings.tsv.gz` – IMDb user ratings and vote counts
- `title.crew.tsv.gz` – Director and writer identifiers
- `title.principals.tsv.gz` – Key cast and crew for each title
- `name.basics.tsv.gz` – People in the film industry
- `title.akas.tsv.gz` – Title region and localization data

---

## 🛠️ Technologies

- **Database**: PostgreSQL  
- **Editor**: Visual Studio Code  
- **Language**: SQL  
- **Visualization** *(Planned)*: AI-generated or Markdown visuals

---

## 🔧 Project Workflow

### 1. Database Setup
- Initialized PostgreSQL database via terminal in VS Code.
- Defined normalized schemas matching the IMDb structure.
- Imported data using `COPY` from local TSV files stored at `D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb`.

### 2. Data Cleaning
- Filtered out non-movie content (e.g., TV shows, episodes).
- Replaced invalid fields (e.g., `\N`) with NULLs or valid types.
- Transformed string fields into usable formats (e.g., arrays, integers).

### 3. Exploratory Data Analysis (EDA)
- Developed 10 queries that progressively apply more advanced SQL techniques.
- Focused solely on movies to maintain scope clarity and depth.

---

## 🧠 Analysis Questions & SQL Techniques

| # | Question | SQL Skills |
|--:|----------|------------|
| 1 | Top 20 highest-rated movies (min 10K votes) | Filtering, sorting, `JOIN`, `LIMIT` |
| 2 | Movie count by release year (last 20 years) | `GROUP BY`, date filtering |
| 3 | Most common movie genres | `STRING_TO_ARRAY`, `UNNEST`, `GROUP BY` |
| 4 | Directors with most high-rated movies | Multi-table `JOIN`, `HAVING`, `COUNT()` |
| 5 | Most prolific actors/actresses | Aggregation, person-movie relationships |
| 6 | Average runtime by genre | `AVG()`, `GROUP BY`, genre processing |
| 7 | Writers with highest average ratings | `JOIN`, `GROUP BY`, `AVG()`, `HAVING` |
| 8 | Most popular genres by decade | Derived columns, `GROUP BY` |
| 9 | Countries with most top-rated movies | Regional filtering, ratings, aggregation |
| 10 | Writer-directors of the same movie | Dual filtering, subqueries |

---

## 🔍 Advanced SQL Concepts Applied

- **Multi-table Joins**: Using `INNER` and `LEFT JOIN` to combine data across six normalized tables.
- **Filtering & Aggregation**: `WHERE`, `GROUP BY`, `HAVING`, combined with `COUNT`, `AVG`, and `SUM`.
- **String & Array Handling**: Use of `STRING_TO_ARRAY`, `UNNEST`, and `REGEXP` functions.
- **Data Type Conversion**: Explicit casting and cleanup of year, runtime, and ID fields.
- **(Planned) Views & CTEs**: Modular query logic and reusable components.
- **(Planned) Window Functions**: Advanced row-wise calculations and rankings.

---

## 📈 What’s Next?

- Create AI-generated visual charts for each query’s output.
- Build a professional markdown or static dashboard layout.
- Export project to GitHub with queries, outputs, and README.

---

## ✅ Learning Outcomes

This project demonstrates proficiency in:

- Working with large, real-world datasets
- Complex SQL query design and debugging
- Data transformation, normalization, and reporting
- Domain-specific reasoning in film and entertainment data

---

> ⭐ **This project is a comprehensive portfolio showcase of SQL proficiency using real-world IMDb movie data.**
