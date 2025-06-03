-- Nama		: Rasya Aditya Pasha Firdaus
-- Nim		: 23241108
-- Kelas	: C
-- Modul 	: Modul 1 SELECT statement, prefix alias

CREATE database PTIc_Mart;

-- menggunakan database
USE PTIc_Mart;

-- SELECT statement
-- praktek 1
-- ambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- praktek 2
-- ambil kolom nama produk dan harga dari tabel produk
SELECT nama_produk, harga FROM ms_produk;

-- praktek 3
-- ambil seluruh kolom menggunakan * 
SELECT * FROM ms_produk;

-- praktek 4
-- ambil kolom kode_produk, nama_produk dari tabel ms_produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- ambil seluruh kolom dari tabel ms penjualan
SELECT * FROM tr_penjualan;


-- PREFIX dan ALIAS
-- prefix
-- praktek 5
-- ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix sebagai identitas bahw nama produk punya ms produk
SELECT ms_produk.nama_produk  FROM ms_produk;

-- praktek 6
-- ambil nama produk dari tabel produk, gunakan tabel dan database sebagai prefix
SELECT ptic_mart.ms_produk.nama_produk FROM ms_produk;

-- alias = nama sementara pengganti nama objek database
-- praktek 7
-- ambil kolom nama produk dari tabel produk asliaskan nama produk dengan np
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- praktek 8
-- ambil nama prouk dari tabel produk, aliaskan tabel produk dengan msp
SELECT nama_produk FROM ms_produk as msp;

-- praktek 9
-- menggunakan alias dan prefix bersamaan
-- ambil nama produk dari tabel produk, aliaskan tabel produk dengan msp dan jadikan prefix untuk kolom
SELECT msp.nama_produk FROM ms_produk AS msp;

-- case 1
-- ambil nama pelanggan dan alamat dari tabel ms pelanggan
SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- case 2
-- ambil nama produk dan harga dari tabael ms produk
SELECT nama_produk, harga FROM ms_produk;

-- cara menyusun laporan 
-- ss praktek 1 nya lalu hasilnya di jalankan di ss juga di bawahnya taruh penjelasannya