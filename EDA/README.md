# 🚢 Exploratory Data Analysis (EDA) — Titanic Dataset  
Simple EDA using Python

---

## 📊 Overview
This project performs a simple **Exploratory Data Analysis (EDA)** on the Titanic dataset using Python.  
The analysis focuses on understanding survival patterns based on several key categorical features.

---

## 🗂 Dataset
- **Source**: Public Titanic dataset (Kaggle / Seaborn / CSV file)
- **Main Columns Used**:
  - `Survived`
  - `Sex`
  - `Pclass`
  - `Embarked`

---

## 🧮 Analysis Steps

### **1. Importing the Dataset**
The dataset is loaded using Python (pandas), followed by a quick inspection of rows and basic structure.

---

### **2. Visualization of Survival Distribution**

#### **📌 Survival by Sex**
A bar plot is created to compare the number of survivors vs. non-survivors for male and female passengers.

#### **📌 Survival by Passenger Class (Pclass)**
Visualizes survival rates across 1st, 2nd, and 3rd class passengers.

#### **📌 Survival by Embarked**
Shows survival distribution based on embarkation ports: Cherbourg (C), Queenstown (Q), and Southampton (S).

---

### **3. Crosstab Analysis**
A crosstab is generated to see the relationship between:

- **Survival status vs. Sex**, and  
- **Survival status vs. Embarked**

This helps identify simple patterns in how survival differed across categories.

---

## 🛠 Tools & Libraries
- **Python**
  - pandas  
  - matplotlib  
  - seaborn  

---

## 📂 Output
The project includes:
- Data import script  
- Visualization plots  
- Crosstab summary tables  

---

## 🎯 Purpose
This EDA aims to:
- Explore basic characteristics of the Titanic dataset  
- Visualize simple survival patterns  
- Provide foundational insights before moving to more advanced analysis or modeling  

---

Explore the notebook to see the plots and results.

