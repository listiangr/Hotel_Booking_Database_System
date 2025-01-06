# Hotel Booking Database System

## 📄 Overview

Proyek ini bertujuan untuk mendesain dan mengimplementasikan database relasional untuk sistem reservasi hotel yang efisien, dengan tujuan mempermudah pengelolaan data tamu, pemesanan, kamar, pembayaran, dan ulasan. Sistem ini dirancang untuk meningkatkan efisiensi operasional hotel, meminimalkan kesalahan manual, dan memberikan pengalaman yang lebih baik bagi tamu melalui pengelolaan data yang terpusat dan terorganisir.

**Fitur Utama:**
- **Pengelolaan Data Tamu:** Menyimpan informasi tamu seperti nama, kontak, dan alamat.
- **Sistem Pemesanan:** Mengelola data pemesanan, jadwal check-in/out, dan status reservasi.
- **Manajemen Kamar:** Memantau ketersediaan kamar dan harga sesuai jenisnya.
- **Pelacakan Pembayaran:** Mencatat transaksi pembayaran dengan berbagai metode.
- **Ulasan Tamu:** Merekam rating dan komentar tamu untuk evaluasi layanan.

---

## 📂 Folder Structure 

`Database/`
- `hotel_database.sql`: Skrip lengkap untuk membuat dan mengisi database.

`Queries/`
- `queries.sql`: Contoh query SQL yang digunakan dalam proyek ini.

`Images/`
- `erd_imagae.png`: Gambar Entity Relationship Diagram (ERD).
- `database_schema.png`: Gambar skema database berisi atribut dan relasi. 

`README.md`: Dokumentasi proyek Hotel Booking Database System.

---

## 🛠️ Database Structure

### Entity Relationship Diagram (ERD)

![Entity Relationship Diagram](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/erd_image.png)

### Database Schema

![Database Schema](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/database_schema.png)

### Database Table

#### Guests Table

> Tabel berisi informasi lengkap dari tamu hotel.

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap tamu                            |
| `name`                 | Nama lengkap tamu hotel                              |
| `gender`               | Jenis kelamin tamu -> Female, Male                   |
| `phone`                | Nomor telepon tamu hotel                             |
| `email`                | Alamat email tamu hotel                              |
| `address`              | Alamat rumah lengkap tamu hotel                      |

#### Rooms Table

> Tabel berisi informasi kamar yang ada pada hotel. 

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap kamar hotel                     |
| `floor`                | Data nomor lantai pada hotel                         |
| `room_number`          | Data Nomor kamar hotel                               |
| `room_type`            | Jenis kamar hotel (Standard, Superior, Suite)        |
| `price_night`          | Harga kamar hotel untuk satu malam                   |
| `status`               | Status ketersedian kamar (Availble, Occupied)        |

#### Bookings Table

> Tabel berisi informasi pemesanan hotel yang dilakukan oleh tamu. 

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap pemesanan kamar                 |
| `guest_id`             | ID yang merujuk pada data tamu (Tabel Guests)        |
| `booking_date`         | Tanggal saat booking dibuat                          |
| `booking_code`         | Kode booking hotel yang bersifat unik                |
| `status`               | Status booking (Completed, Ongoing, Upcoming)        |

#### Details Table

> Tabel berisi informasi lebih rinci terkait pemesanan kamar hotel. 

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap detail pemesanan                |
| `booking_id`           | ID yang merujuk pada data booking (Tabel Bookings)   |
| `room_id`              | ID yang merujuk pada data kamar (Tabel Rooms)        |
| `check_in`             | Tanggal mulai menginap di hotel                      |
| `check_out`            | Tanggal selesai menginap di hotel                    |
| `price_total`          | Total harga (lama menginap * harga sewa kamar)       |

#### Payments Table

> Tabel berisi informasi riwayat pembayaran setelah kamar dipesan.  

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap pembayaran                      |
| `booking_id`           | ID yang merujuk pada data booking (Tabel Bookings)   |
| `amount_paid`          | Total harga yang dibayarkan                          |
| `method`               | Metode pembayaran (Bank Transfer, Credit Card, Digital Wallet) |
| `status`               | Status pembayaran (Paid, Pending, Cancelled)         |

#### Reviews Table

> Tabel berisi ulasan yang diberikan oleh tamu setelah selesai menginap.  

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap ulasan yang ditulis             |
| `booking_id`           | ID yang merujuk pada data booking (Tabel Bookings)   |
| `rating`               | Rating ulasan skala 1 - 5                            |
| `comment`              | Komentar terkait pengalaman booking hotel            |

### Data Relationship

`Guests and Bookings`
> Tabel Guests memiliki hubungan satu ke banyak (one-to-many) dengan tabel Bookings. Setiap tamu (guest) dapat membuat beberapa pemesanan (bookings). Relasi ini dihubungkan melalui kolom guest_id pada tabel Bookings, yang merujuk pada kolom id di tabel Guests

`Rooms and Details`
> Tabel Rooms memiliki hubungan satu ke banyak (one-to-many) dengan tabel Details. Satu kamar dapat digunakan dalam beberapa pemesanan (details), namun untuk waktu yang berbeda. Relasi ini dihubungkan melalui kolom room_id pada tabel Details, yang merujuk pada kolom id di tabel Rooms.

`Bookings and Details`
> Tabel Bookings memiliki hubungan satu ke banyak (one-to-many) dengan tabel Details. Satu pemesanan dapat mencakup beberapa kamar. Relasi ini dihubungkan melalui kolom booking_id pada tabel Details, yang merujuk pada kolom id di tabel Bookings. 

`Bookings and Payments`
> Tabel Bookings memiliki hubungan satu ke satu (one-to-one) dengan tabel Payments. Setiap pemesanan memiliki satu pembayaran yang tercatat. Relasi ini dihubungkan melalui kolom booking_id pada tabel Payments, yang merujuk pada kolom id di tabel Bookings.

`Bookings and Reviews`
> Tabel Bookings memiliki hubungan satu ke satu (one-to-one) dengan tabel Reviews. Setiap pemesanan yang selesai dapat memiliki satu ulasan dari tamu. Relasi ini dihubungkan melalui kolom booking_id pada tabel Reviews, yang merujuk pada kolom id di tabel Bookings.

--- 

## 💻 SQL Query

### 1. Membuat Database

```sql
CREATE DATABASE hotel_database;
```

### 2. Membuat Table 

![create_guests](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_guests.png)
![create_rooms](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_rooms.png)
![create_bookings](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_bookings.png)
![create_details](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_details.png)
![create_payments](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_payments.png)
![create_reviews](https://github.com/listiangr/Hotel_Booking_Database_System/blob/main/Images/create_reviews.png)

### Guests Table 

```sql
SELECT g.id, g.name, g.phone, b.booking_date 
FROM guests g
JOIN bookings b ON g.id = b.guest_id;
```



### Rooms Tables

### Bookings Table

### Details Table

### Payments Table

### Ratings Table

### 1. Menampilkan Semua Data Tamu yang Pernah Memesan
```sql
SELECT g.id, g.name, g.phone, b.booking_date 
FROM guests g
JOIN bookings b ON g.id = b.guest_id;
```

## 📚 Case Study

## 🚀 How to Run

`Clone Repository`

Clone repository proyek ini ke lokal Anda:
```bash
git clone https://github.com/listiangr/Hotel_Booking_Database_System.git
```

`Buka Aplikasi Database`

Gunakan aplikasi database seperti phpMyAdmin, MySQL Workbench, atau MariaDB.

`Import File SQL`

Pilih database yang ingin digunakan atau buat database baru.
Import file hotel_database.sql yang ada di folder Database/.

`Jalankan Query`

Buka file queries.sql di folder Queries/ untuk mencoba contoh query yang telah disediakan.
Jalankan query di aplikasi database Anda untuk melihat hasilnya.


## 📌 Conclusion

Sistem database reservasi hotel ini memberikan solusi yang terorganisir untuk mengelola data tamu, kamar, pembayaran, dan ulasan dengan lebih efisien. Dengan desain relasional, sistem ini dapat:
1. Meminimalkan Kesalahan Manual: Data yang terpusat mempermudah pengelolaan dan mengurangi risiko kesalahan.
2. Meningkatkan Kecepatan Pencarian Data: Query yang dioptimalkan memungkinkan pengambilan data secara cepat.
3. Mempermudah Pelacakan Transaksi: Semua transaksi dicatat dengan detail, memudahkan audit dan pelaporan.
4. Evaluasi Layanan Melalui Ulasan: Data ulasan tamu membantu hotel dalam meningkatkan kualitas layanan.
Sistem ini dapat dikembangkan lebih lanjut untuk mengintegrasikan API pembayaran, fitur notifikasi, dan dashboard analitik untuk pelaporan real-time.

---
