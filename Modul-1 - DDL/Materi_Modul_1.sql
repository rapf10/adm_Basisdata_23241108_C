-- Nama		: Rasya Aditya Pasha Firdaus
-- Nim		: 23241108
-- Kelas	: C
-- Modul 	: Modul 1 Data Definition Language

-- Membuat Database
CREATE Database pti_mart;

-- Menggunakan Database
USE pti_mart;
-- Membuat Table Pelanggan
CREATE Table pelanggan (
id_pelanggan int PRIMARY KEY NOT NULL, 
nama varchar(50),
alamat varchar(100),
kota varchar(50),
no_hp varchar (15)
);

-- Membuat Tabel Produk
CREATE table  produk(
id_produk int PRIMARY KEY NOT NULL,
nama varchar(50),
kategori varchar(20),
harga int(12),
stok int(100)
);

-- Membuat tabel dengan foreigin key (relasi)
CREATE table transaksi(
id_transaksi int not null primary key,
id_produk int,
id_pelanggan int,
tgl_transaksi date,
qty int,
total_harga int,
foreign key (id_produk) references produk(id_produk),
foreign key (id_pelanggan) references pelanggan(id_pelanggan)
);

-- Mengisi data dalam tabel
insert into pelanggan(
id_pelanggan, nama, alamat, kota, no_hp) 
values 
(001,"adit","Mataram", "Mataram", 00877873652),
(002,"aziz","Mataram", "janawanita", 00877873651),
(003,"alpih","Mataram", "Mataram", 00877873121),
(004,"zofita","Mataram", "Mataram", 008778736333),
(005, "angga", "Narmada" "Narmada", 0877654362);


insert into produk(
id_produk, nama, kategori, harga, stok)
values
(001, "superco", "makanan", 1000, 100),
(002, "twister", "makanan", 2000, 30),
(003, "es teh", "minuman", 3000, 10),
(004, "pocari", "minuman", 8000, 5),
(005, "buku gambar", "atk", 15000, 20);
 

insert into transaksi
	set id_transaksi = 0001,
		tgl_transaksi  = "2025-04-10",
		id_produk = (
		select id_produk from produk where id_produk = 001),
        id_pelanggan = (
        select id_pelanggan from pelanggan where id_pelanggan = 001),
        qty = 1, 
        total_harga = (
        select harga from produk where id_produk = 001 * qty);
        
-- cek apakah data sudah masuk
select * FROM pelanggan;

-- cek apakah data produk sudah masuk
select * from produk;

-- cek apakah data transaksi sudak masuk
select * from transaksi;
        
