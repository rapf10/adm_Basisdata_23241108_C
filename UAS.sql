-- nama           : Rasya Aditya Pasha Firdaus
-- nim            : 23241108
-- Prodi/kelas    : Pendidikan Teknologi Informasi / IV C

use ptic_mart;

-- soal 1 
-- munculkan kode pelanggan, nama produk, kuantitinya, harga dan total dari semua yang pernah ditransaksikan, namun output yang diminta adalah total harga minimal 200.000 dan urutkan
-- berdasarkan total harga terkecil
select tp.kode_pelanggan, tp.nama_produk, tp.qty, tp.harga, (tp.qty * tp.harga) as total_harga
from tr_penjualan as tp
where (tp.qty * tp.harga) >= 200000
order by total_harga asc;

-- soal 2
-- tampilkan nama produk, kategori, dan harga dari semua produk yang tidak pernah terjual

select mp.nama_produk, mp.kategori_produk, mp.harga from ms_produk as mp left join tr_penjualan as tp on mp.kode_produk = tp.kode_produk
where tp.kode_produk is null;

-- soal 3
-- munculkan kode pelanggan, nama pelanggan, alamat, dan nilai transaksi dari pelanggan yang paling tinggi nilai transaksinya
select tp.kode_pelanggan, mp.nama_pelanggan, mp.alamat, max(tp.qty * tp.harga) as total_harga from tr_penjualan as tp join ms_pelanggan as mp on tp.kode_pelanggan = mp.kode_pelanggan group by tp.kode_pelanggan
order by total_harga desc;

select nama_pelanggan from ms_pelanggan;





