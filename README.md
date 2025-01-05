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
`database/`
- `hotel_booking.sql`: Skrip untuk membuat dan mengisi database.

`queries/`
- `queries.sql`: Contoh query SQL yang digunakan dalam proyek ini.

`images/`
- Gambar untuk ERD, database schema, dan hasil query.

`README.md`: Dokumentasi proyek.

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
| `id`                   | ID unik untuk setiap kamar hotel                     |
| `booking_id`           | Data nomor lantai pada hotel                         |
| `room_id`              | Data Nomor kamar hotel                               |
| `check_in`             | Jenis kamar hotel (Standard, Superior, Suite)        |
| `check_out`            | Harga kamar hotel untuk satu malam                   |
| `price_total`          | Status ketersedian kamar (Availble, Occupied)        |

#### Payments Table

> Tabel berisi informasi kamar yang ada pada hotel. 

| **Kolom**              | **Deskripsi**                                        |
|------------------------|------------------------------------------------------|
| `id`                   | ID unik untuk setiap kamar hotel                     |
| `floor`                | Data nomor lantai pada hotel                         |
| `room_number`          | Data Nomor kamar hotel                               |
| `room_type`            | Jenis kamar hotel (Standard, Superior, Suite)        |
| `price_night`          | Harga kamar hotel untuk satu malam                   |
| `status`               | Status ketersedian kamar (Availble, Occupied)        |


--- 

## 💻 SQL Query

## 📊 Visualisasi

## 📚 Case Study

## 🚀 How to Run

## 📌 Conclusion

---
