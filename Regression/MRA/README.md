# 📘 Moderated Regression Analysis (MRA)  
### Corporate Factors, Firm Value, and Timeliness of Financial Reporting

This project examines how several corporate characteristics influence the **Timeliness of Financial Reporting (TKP)**, with **Tobin’s Q** serving as a **moderating variable**. Analysis was conducted using **SPSS** with a total of **139 company observations**.

---

## 📊 Objective

The study aims to:

1. Analyze the effect of **Gender Inclusion (GI)**, **Corporate Environmental Disclosure (CED)**, and other corporate characteristics on **TKP**.
2. Evaluate whether **Tobin’s Q** strengthens or weakens the relationship between these variables and TKP.
3. Determine the statistical contribution of each variable through Moderated Regression Analysis.

---

## 📂 Dataset Information

- **Total Observations:** 139  
- **Variables:**

### **Dependent Variable (Y)**
- **TKP (Timeliness of Financial Reporting)**  
  Indicates how promptly the company publishes its financial statements. Higher scores reflect more timely reporting.

### **Independent Variables (X)**  
- **GI (Gender Inclusion Index):**  
  Measures gender diversity in leadership roles (range 0–1).

- **CED (Corporate Environmental Disclosure):**  
  Measures the extent of environmental disclosure in annual or sustainability reports (range 0–1).

*(Jika variabel X tambahan digunakan di penelitianmu, tinggal ditambahkan ke README ini.)*

### **Moderating Variable (M)**
- **Tobin’s Q:**  
  Represents firm value based on market performance.  
  Values greater than 1 generally indicate strong market expectations and growth potential.

---

## 🛠️ Software Used

- **SPSS** for moderated regression, interaction variable creation, model estimation, and diagnostic testing.

---

## 🔍 Analysis Steps

### **1. Descriptive Statistics**  
Summary of minimum, maximum, mean, and standard deviation for all variables.

### **2. Classical Assumption Tests**
- **Normality Test**  
- **Multicollinearity Test** (VIF & Tolerance)  
- **Heteroscedasticity Test** (Glejser Test or Scatterplot)

Ensures the regression model meets the required statistical assumptions.

---

## 📈 Moderated Regression Analysis (MRA)

The MRA is performed through two models:

### **1. Main Effects Model**
\[
TKP = \beta_0 + \beta_1 GI + \beta_2 CED + \beta_3 Tobin's\,Q + \epsilon
\]

### **2. Interaction (Moderation) Model**
\[
TKP = \beta_0 + \beta_1 GI + \beta_2 CED + \beta_3 Tobin's\,Q +
\beta_4 (GI \times Tobin's\,Q) +
\beta_5 (CED \times Tobin's\,Q) + \epsilon
\]

### **Tests Conducted**
- **t-test:** Significance of individual predictors  
- **F-test:** Overall model significance  
- **R² & Adjusted R²:** Model explanatory power  
- **Interaction Term Significance:** Determines whether Tobin’s Q moderates the relationships

---
