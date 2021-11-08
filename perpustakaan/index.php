<?php 
session_start();

if( !isset($_SESSION["login"]) ) {
	header("Location: login.php");
	exit;
}

require 'functions.php';
$books = query("SELECT * FROM buku");

// tombol cari ditekan
if( isset($_POST["cari"]) ) {
	$books = cari($_POST["keyword"]);
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Admin</title>
	<style>
		.loader {
			width: 100px;
			position: absolute;
			top: 118px;
			left: 210px;
			z-index: -1;
			display: none;
		}

		@media print {
			.logout, .tambah, .form-cari, .aksi {
				display: none;
			}
		}
	</style>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/script.js"></script>
</head>
<body>

<a href="logout.php" class="logout">Logout</a> | <a href="cetak.php" target="_blank">Cetak</a>

<h1>Daftar Buku</h1>

<a href="tambah.php" class="tambah">Tambah data buku</a>
<br><br>

<form action="" method="post" class="form-cari">

	<input type="text" name="keyword" size="40" autofocus placeholder="masukkan keyword pencarian.." autocomplete="off" id="keyword">
	<button type="submit" name="cari" id="tombol-cari">Cari!</button>

	<img src="img/loader.gif" class="loader">
	
</form>

<br>
<div id="container">
<table border="1" cellpadding="10" cellspacing="0">

	<tr>
		<th>No.</th>
		<th class="aksi">Aksi</th>
		<th>Gambar</th>
		<th>Judul</th>
		<th>Pengarang</th>
		<th>Penerbit</th>
		<th>Keterangan</th>
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $books as $row ) : ?>
	<tr>
		<td><?= $i; ?></td>
		<td class="aksi">
			<a href="ubah.php?id=<?= $row["id"]; ?>">ubah</a> |
			<a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('yakin?');">hapus</a>
		</td>
		<td><img src="img/<?= $row["gambar"]; ?>" width="50"></td>
		<td><?= $row["judul"]; ?></td>
		<td><?= $row["pengarang"]; ?></td>
		<td><?= $row["penerbit"]; ?></td>
		<td><a href="satu.php">Deskripsi</a></td>
		
		
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>
</div>



</body>
</html>