# MARS Analysis — Determinants of Poverty in South Sulawesi

This project analyzes the factors influencing poverty using **Multivariate Adaptive Regression Splines (MARS)** implemented in **RStudio**.  
The dataset contains several socioeconomic and development indicators that may contribute to the poverty rate across regions.

---

## 📊 Dataset Description

The dataset includes the following variables:

- **P0** — Percentage of Poor Population  
  (Proportion of residents living below the poverty line)

- **TPT** — Open Unemployment Rate  
  (Percentage of the labor force who are unemployed and actively seeking employment)

- **TPAK** — Labor Force Participation Rate  
  (Percentage of working-age population participating in the labor market)

- **AHH_PR** — Life Expectancy (Female)  
  (Average number of years a newborn girl is expected to live)

- **RLS** — Average Years of Schooling  
  (Average completed years of formal education for adults aged 25+)

- **HLS** — Expected Years of Schooling  
  (Expected total years of schooling for a child at the start of education)

- **PE** — Economic Growth  
  (Regional economic growth based on GDP/PDRB)

- **GINI** — Gini Index  
  (Level of income inequality; values closer to 1 indicate higher inequality)

- **SANITASI_LAYAK** — Access to Proper Sanitation (%)  
  (Percentage of households with access to improved sanitation facilities)

- **AIR_MINUM_LAYAK** — Access to Safe Drinking Water (%)  
  (Percentage of population with access to safe drinking water sources)

- **ABH** — Illiteracy Rate  
  (Percentage of population unable to read and write)

---

## 🎯 Objective

To identify the most influential variables affecting the poverty rate (P0) and to build a predictive model using **Multivariate Adaptive Regression Splines (MARS)**.

MARS is selected because it:

- Handles non-linear relationships automatically  
- Performs automatic variable selection  
- Builds flexible piecewise regression models  
- Works well for socioeconomic datasets with complex interactions

---

## 🛠️ Tools & Software

- **RStudio**  
- **`earth` package** (for MARS modeling)  
- Additional packages: `dplyr`, `ggplot2`, `caret` (optional for preprocessing and evaluation)

---

## 🧪 Analysis Workflow

### **1. Data Import & Cleaning**
- Read the data from Excel/CSV  
- Handle missing values  
- Convert data types if necessary  

### **2. Exploratory Data Analysis (EDA)**
- Summary statistics  
- Correlation check  
- Visualization (scatterplots, histograms, heatmaps)

### **3. MARS Modeling**
Using the **`earth`** package:

Key steps:
1. Fit the MARS model  
2. Allow automatic knot selection  
3. Evaluate variable importance  
4. Examine model terms and hinge functions  
