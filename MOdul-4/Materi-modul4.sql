-- Nama		: Rasya Aditya Pasha Firdaus
-- NIM		: 23241108
-- Kelas	: C
-- Modul	: Modul 4 JOIN, INNER DAN OUTER JOIN

create database ptic_mart;
-- Menggunakan database
use ptic_mart;

-- JOIN
-- MENGGABUNGKAN DUA TABEL ATAU LEBIH yang saling berelasi 
-- untuk mendapatkan infromasi yang lebih kompleks
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;
-- Praktek 1
-- ambil nama pelanggan yang pernah bertransaksi beserta qty 
-- artinya kita akan mengambil data dari tabel ms_pelanggan dan tr_penjualan
-- ambil kode pelanggan, nama pelanggan, qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty from tr_penjualan as tp join ms_pelanggan as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 2
-- CROSS JOIN (semua data akan direlasikan)
-- menggabungkan dua buah tabel tanpa ekspresi fillter
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty from tr_penjualan as tp join ms_pelanggan as mp 
on TRUE;

-- Praktek 3
-- INNER JOIN (hanya data yang ada di kedua tabel yang akan direlasikan)
-- ambil pelanggan yang pernah bertransaksi beserta nama produk dan qty
-- artinya join tabel penjualan dan tabel pelanggan
-- ambil kode pelanggan, nama pelanggan, nama produk, qty

select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty from tr_penjualan as tp INNER JOIN ms_pelanggan as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 4
-- left join
-- ambil semua nama pelanggan yang pernah bertransaksi
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty from tr_penjualan as tp left join ms_pelanggan as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 5
-- right join
-- ambil semua nama produk yang pernah dijual
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty from tr_penjualan as tp right join ms_pelanggan as mp
on tp.kode_pelanggan = mp.kode_pelanggan;


