<?php

$id = @$_GET['id'];

$sql = "SELECT * FROM tb_pengumuman WHERE id = '$id'";
$exc = mysqli_query($link, $sql);
$x = mysqli_fetch_assoc($exc);

?>

<div class="paenl panel-defaul">
	<div class="panel-body content-adm">
		<h4>Edit Pengumuman</h4>
		<br>
		<form action="" method="post" class="form-group">
			<input type="text" name="judul" class="form-control" placeholder="Judul Pengumuman" autocomplete="off" required value="<?= $x['judul']; ?>">
			<br>
			<textarea name="isi" id="form-alamat" class="form-control" rows="10"><?= $x['isi']; ?></textarea> <br>
			<input type="submit" name="submit" value="Simpan!" class="btn btn-primary">
		</form>
	</div>
</div>

<?php
if (isset($_POST['submit'])) {
	$judul = $_POST['judul'];
	$isi   = $_POST['isi'];

	$sql_upd = "UPDATE tb_pengumuman SET judul = '$judul', isi = '$isi' WHERE id = '$id' "; 
	$ex_upd = mysqli_query($link, $sql_upd);

	if ($ex_upd) {
		echo "<script>alert('Pengumuman berhasil di edit');window.location='pengumuman';</script>";
	} else {
		echo "<script>alert('Pengumuman gagal di edit');window.location='pengumuman';</script>";
	}
}



?>