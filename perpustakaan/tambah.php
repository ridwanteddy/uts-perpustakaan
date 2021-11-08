<?php
session_start();

if( !isset($_SESSION["login"]) ) {
	header("Location: login.php");
	exit;
}

require 'functions.php';

// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil di tambahkan atau tidak
	if( tambah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'index.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('data gagal ditambahkan!');
				document.location.href = 'index.php';
			</script>
		";
	}


}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Tambah data Buku</title>
</head>
<body>
	<h1>Tambah data buku</h1>

	<form action="" method="post" enctype="multipart/form-data">
		<ul>
			<li>
				<label for="judul">Judul : </label>
				<input type="text" name="judul" id="judul" required>
			</li>
			<li>
				<label for="pengarang">Pengarang : </label>
				<input type="text" name="pengarang" id="pengarang">
			</li>
			<li>
				<label for="penerbit">Penerbit :</label>
				<input type="text" name="penerbit" id="penerbit">
			</li>
			<li>
				<label for="gambar">Gambar :</label>
				<input type="file" name="gambar" id="gambar">
			</li>
			<li>
				<button type="submit" name="submit">Tambah Data!</button>
			</li>
		</ul>

	</form>




</body>
</html>