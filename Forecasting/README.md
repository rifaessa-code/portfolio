# 📈 Forecasting Projects

This folder contains forecasting projects related to fisheries production in Central Java. The analyses are performed using classical time series methods to predict future production values based on historical data.

---

## 📌 Projects Included

### **1. Forecasting Produksi Pelabuhan Perikanan Pantai Jawa Tengah — Single Moving Average**
This project uses the **Single Moving Average** method to forecast fishery production at coastal fishing ports in Central Java.  
The workflow includes:
- Data preprocessing  
- Identifying appropriate moving average window  
- Calculating forecasts  
- Evaluating model performance (MAPE, MAD, MSE)  
- Visualizing actual vs forecasted values  

---

### **2. Forecasting Produksi Ikan Nilai Jawa Tengah — Single Exponential Smoothing**
This project applies **Single Exponential Smoothing (SES)** to estimate fish production in Central Java.  
The process includes:
- Exploratory data analysis  
- Selecting the smoothing constant (α)  
- Generating SES forecasts  
- Measuring accuracy  
- Plotting the forecast results  

---

### **3. Rice Production Forecasting in West Sumatra — Time Series Prophet**
This project focuses on **forecasting rice production in West Sumatra Province** using the **Prophet time series model (Python)**.  
It is developed as an **independent portfolio project**, based on monthly rice production data.

The analysis workflow includes:
- Data preprocessing and transformation into Prophet’s required format (`ds` and `y`)
- Building a Prophet model with trend and yearly seasonality components
- Forecasting rice production up to **2026**
- Evaluating model performance using **MAPE (13.92% – good accuracy)**
- Interpreting long-term trends and seasonal production patterns

The results indicate a **strong annual seasonal pattern** in rice production, with a **gradual long-term downward trend**.  
Forecasted values remain within a **realistic historical range**, showing that the Prophet model performs well on agricultural time series data.

---

## 🛠 Tools Used
- Excel  
- Minitab

---

## 📂 Purpose
These forecasting models aim to:
- Understand production trends  
- Support planning and decision-making related to fishery activities  
- Provide simple yet effective baseline forecasting methods  

---

Feel free to explore each project folder for detailed scripts, calculations, and visualizations.

