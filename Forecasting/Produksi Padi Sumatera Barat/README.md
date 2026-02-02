# Rice Production Forecasting in West Sumatra (Prophet)

## Description
This project focuses on **forecasting rice production in West Sumatra Province** using the **Prophet time series method (Python)**.  
It is developed as an **independent portfolio project**, inspired by my experience contributing to the **Production Statistics Team at BPS Province of West Sumatra**.

---

## Objectives
- Identify **annual seasonal patterns** in rice production  
- Forecast rice production up to **2026**  
- Analyze **long-term production trends**

---

## Data
- Data period: **2018–2024 (monthly)**  
- Source: **Badan Pusat Statistik (BPS) – West Sumatra Province**  
- Target variable: Rice production  

The data is transformed into Prophet’s required format with the following columns:
- `ds` (time)
- `y` (production value)

---

## Methodology
- Model: **Prophet**
- Forecast horizon: **24 months (2025–2026)**
- Accuracy evaluation using **MAPE**
- MAPE value: **13.92% (good accuracy)**

---

## Key Results
- Rice production exhibits a **strong annual seasonal pattern**
- Long-term trend shows a **gradual downward tendency**
- Forecasted values remain within a **realistic historical range**

---

## Tools
- Python  
- pandas  
- prophet  
- matplotlib  
- scikit-learn  

---

## Notes
This project is created for **learning and portfolio purposes** and **does not represent any official BPS publication**.

---

## Author
**Arifatul Fathinah Essa**  
📧 arifatulfathinahessa@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/arifatulfe/
