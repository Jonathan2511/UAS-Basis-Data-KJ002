# Tugas Akhir Mata Kuliah Basis Data KJ002

Project Tugas Akhir untuk memenuhi UAS Mata Kuliah Basis Data KJ002, Dirancang oleh Jonathan Aditya Puryanto 20210801001

Dosen Pengampu: MUNAWAR, S.TP, MM, Ph.D

ERD:

![erd](https://i.ibb.co/qryQzTX/ERD-CONCEPTUAL.png)

# Deskripsi
PT Esa Unggul Express adalah perusahaan ekspedisi pengiriman barang dengan fokus pelayanan di 5 regional pulau Jawa. Berpusat di Jakarta, perusahaan ini memiliki Head Office dan 5 Gerai sebagai Gudang dan tempat transit barang. Setiap gerai melayani pengiriman khusus sesuai daerahnya, dengan 1 Kasir dan 2 Kurir setiap gerai.

### Fitur Utama:
- **Jenis Barang:** Elektronik, Farmasi, Apparel, Food and Beverages, Kosmetik, Otomotif, Surat Berharga.
- **Jenis Pengiriman:** Reguler.
- **Harga Pengiriman:** 10.000 per kilogram (kecuali Surat Berharga: 30.000 per kilogram).
- **Biaya Pengiriman:** Bergantung pada jenis barang, jarak, dan berat produk.
  
### Perhitungan Biaya Pengiriman:
- Harga Jabodetabek ke Jabodetabek: 1kg per 1kg.
- Harga Jabodetabek keluar Jabodetabek: 2kg per 1kg.
- Harga Jawa Barat, Jawa Timur, Jawa Tengah, Yogyakarta: Sama seperti Jabodetabek.

### Berat Produk:
- Berat Sebenarnya atau Berat berdasarkan Volume (panjang x tinggi x lebar / 6.000).

### Asuransi:
- Opsional, dikenakan 50% dari harga pengiriman.
- Maksimal 10x lipat dari biaya pengiriman.

### Contoh Penghitungan Biaya:
- Pengirim dari Jabodetabek ke Jawa Timur, barang elektronik 1kg, tanpa asuransi.
- Biaya kirim: 20.000 (2x lipat karena di luar regional).

### Tugas Pegawai:
- **Kurir:** Pengiriman Barang dari Gerai ke Penerima.
- **Kasir:** Mencatat Transaksi, total pendapatan dimasukkan ke Kas Pendapatan.
