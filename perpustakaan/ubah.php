<?php
session_start();

if( !isset($_SESSION["login"]) ) {
	header("Location: login.php");
	exit;
}

require 'functions.php';

// ambil data di URL
$id = $_GET["id"];

// query data mahasiswa berdasarkan id
$bks = query("SELECT * FROM buku WHERE id = $id")[0];


// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil diubah atau tidak
	if( ubah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil diubah!');
				document.location.href = 'index.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('data gagal diubah!');
				document.location.href = 'index.php';
			</script>
		";
	}


}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ubah data Buku</title>
</head>
<body>
	<h1>Ubah data buku</h1>

	<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?= $bks["id"]; ?>">
		<input type="hidden" name="gambarLama" value="<?= $mhs["gambar"]; ?>">
		<ul>
			<li>
				<label for="judul">Judul : </label>
				<input type="text" name="judul" id="judul" required value="<?= $bks["judul"]; ?>">
			</li>
			<li>
				<label for="pengarang">Pengarang : </label>
				<input type="text" name="pengarang" id="pengarang" value="<?= $bks["pengarang"]; ?>">
			</li>
			<li>
				<label for="penerbit">Penerbit :</label>
				<input type="text" name="penerbit" id="penerbit" value="<?= $bks["penerbit"]; ?>">
			</li>
		
			<li>
				<label for="gambar">Gambar :</label> <br>
				<img src="img/<?= $mhs['gambar']; ?>" width="40"> <br>
				<input type="file" name="gambar" id="gambar">
			</li>
			<li>
				<button type="submit" name="submit">Ubah Data!</button>
			</li>
		</ul>

	</form>




</body>
</html>