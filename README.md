# Hotel Booking Database System

## 📄 Overview
Proyek ini merupakan proyek berisi desain dan implementasi database relasional untuk sistem reservasi hotel. Sistem ini mencakup pengelolaan data kamar, tamu, pemesanan, pembayaran, dan ulasan. Database ini dirancang untuk mendukung backend aplikasi reservasi hotel. 

**Fitur utama:**
- Mengelola data kamar (`Tabel Rooms`)
- Menyimpan informasi tamu (`Tabel Guests`)
- Menangani pemesanan (`Tabel Bookings`)
- Melacak pembayaran (`Tabel Payments`)
- Mencatat ulasan tamu (`Tabel Reviews`)

## 📂 Folder Structure 


## 📐 Entity Relationship Diagram (ERD)
ERD Berikut menggambarkan hubungan antar entitas di database:


## 🛠️ Database Structure

## 💻 SQL Query

## 📊 Visualisasi

## 📚 Case Study

## 🚀 How to Run

## 📌 Conclusion

---

## 📊 Data Overview
Data yang digunakan dalam proyek ini adalah data penjualan e-commerce yang mencakup informasi berikut:

### Struktur Data

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `Order ID`             | ID unik untuk setiap transaksi pesanan               |
| `Order Date`           | Tanggal pesanan dilakukan                           |
| `Ship Date`            | Tanggal pengiriman barang                           |
| `Ship Mode`            | Metode pengiriman produk (misal: Second Class)       |
| `Customer ID`          | ID unik untuk pelanggan                              |
| `Customer Name`        | Nama pelanggan                                       |
| `Segment`              | Segmen pelanggan (misal: Consumer, Corporate)        |
| `Country`              | Negara pelanggan                                    |
| `City`                 | Kota pelanggan                                       |
| `State`                | Provinsi pelanggan                                   |
| `Postal Code`          | Kode pos pelanggan                                  |
| `Region`               | Wilayah (misal: South, West)                         |
| `Product ID`           | ID unik untuk setiap produk                         |
| `Category`             | Kategori produk (misal: Furniture, Office Supplies)  |
| `Sub-Category`         | Sub-kategori produk (misal: Chairs, Bookcases)       |
| `Product Name`         | Nama produk                                          |
| `Sales`                | Penjualan produk dalam satuan mata uang              |
| `Quantity`             | Jumlah unit produk yang terjual                     |
| `Discount`             | Persentase diskon yang diberikan                    |
| `Profit`               | Keuntungan yang didapatkan dari penjualan produk    |
| `Calendar`             | Bulan transaksi dilakukan                           |
| `Month`                | Bulan transaksi dilakukan                           |
| `Year`                 | Tahun transaksi dilakukan                           |




## 🔬 Methodology

Tools: Microsoft Excel   
Proyek ini menggunakan metode berikut untuk analisis data penjualan:

### 1. Collection (Pengumpulan Data)
   - Pengumpulan data penjualan dilakukan dari platform MySkill dalam format Excel. Data yang dikumpulkan mencakup informasi mengenai transaksi penjualan, pelanggan, dan produk yang dijual.

### 2. Cleaning (Pembersihan Data)
   Proses pembersihan data dilakukan untuk memastikan kualitas dan konsistensi data. Langkah-langkah pembersihan meliputi:
   - Menghapus baris data yang hilang atau tidak relevan.
   - Menghapus duplikat data yang tercatat lebih dari satu kali.
   - Mengonversi kolom tanggal menjadi format yang sesuai untuk analisis.
   - Mengonversi kolom "Sales" dan "Profit" ke dalam mata uang dolar AS.
   - Mengekstrak kolom "Order Date" untuk membuat kolom baru seperti "Calendar", "Month", dan "Year" untuk analisis lebih lanjut.

### 3. Exploratory Data Analysis (EDA)
   Pada tahap ini, analisis eksplorasi dilakukan untuk mendapatkan wawasan awal mengenai distribusi dan pola data. Beberapa teknik yang digunakan adalah:
   - **Analisis Deskriptif**: Menganalisis distribusi penjualan berdasarkan kategori produk, segmen pasar, dan lokasi untuk memahami bagaimana produk terjual di berbagai dimensi.
   - **Trend Analysis (Analisis Tren)**: Menganalisis tren penjualan per bulan untuk memahami pola musiman atau fluktuasi penjualan sepanjang waktu.
   - **Pivot Tables (Tabel Pivot)**: Membuat tabel pivot untuk merangkum total penjualan, jumlah produk terjual, dan laba berdasarkan produk, bulan, dan segmen pasar.
   - **Top 10 Produk**: Mengidentifikasi 10 produk dengan penjualan tertinggi berdasarkan data yang ada, yang dapat memberikan wawasan mengenai produk yang paling diminati oleh pelanggan.
   - **Analisis Margin Laba**: Menghitung margin laba untuk setiap produk dan kategori untuk mengetahui produk mana yang paling menguntungkan bagi perusahaan.

### 4. Visualization (Visualisasi Data)
   Untuk memudahkan pemahaman hasil analisis, visualisasi data digunakan melalui berbagai cara:
   - **Dashboard Excel**: Membuat dashboard interaktif di Excel yang menunjukkan tren penjualan, produk terlaris, serta analisis berdasarkan bulan, kategori, dan segmen pasar. Ini memungkinkan pemangku kepentingan untuk melihat gambaran umum yang jelas dan mudah dipahami.
   - **Grafik dan Visualisasi**: Menggunakan grafik garis dan batang untuk menunjukkan tren penjualan per bulan dan menampilkan 10 produk terlaris berdasarkan penjualan. Grafik ini membantu untuk menampilkan data secara visual sehingga lebih mudah menganalisis perubahan dan pola penjualan.

   Berikut adalah dashboard visualisasi dari data penjualan yang telah dianalisis.

  ![Sales Dashboard](https://github.com/listiangr/Ecommerce_Sales_Data_Analysis_Using_Excel/blob/main/Sales%20Dashboard.png?row=true)

  
