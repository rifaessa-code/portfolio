# Proyeksi Produksi Padi Sumatera Barat (Prophet)

## Deskripsi
Project ini merupakan **analisis peramalan produksi padi di Provinsi Sumatera Barat** menggunakan metode **time series Prophet (Python)**.  
Project ini dibuat sebagai **project mandiri portofolio**, terinspirasi dari pengalaman saya berkontribusi di **Tim Produksi BPS Provinsi Sumatera Barat**.

---

## Tujuan
- Mengidentifikasi **pola musiman tahunan** produksi padi  
- Memproyeksikan produksi padi hingga **tahun 2026**  
- Menganalisis **tren jangka panjang** produksi padi  

---

## Data
- Periode data: **2018–2024 (bulanan)**  
- Sumber: **Badan Pusat Statistik (BPS) Provinsi Sumatera Barat**  
- Variabel utama: Produksi padi  

Data ditransformasikan ke format Prophet dengan kolom:
- `ds` (waktu)
- `y` (nilai produksi)

---

## Metode
- Model: **Prophet**
- Horizon peramalan: **24 bulan (2025–2026)**
- Evaluasi akurasi menggunakan **MAPE**
- Nilai MAPE: **13,92% (kategori baik)**

---

## Hasil Utama
- Produksi padi memiliki **pola musiman tahunan yang kuat**
- Tren jangka panjang menunjukkan **penurunan gradual**
- Hasil proyeksi berada dalam **rentang historis yang realistis**

---

## Tools
- Python  
- pandas  
- prophet  
- matplotlib  
- scikit-learn  

---

## Catatan
Project ini dibuat untuk **keperluan pembelajaran dan portofolio** dan **bukan merupakan publikasi resmi BPS**.

---

## Penulis
**Arifatul Fathinah Essa**  
📧 arifatulfathinahessa@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/arifatulfe/

