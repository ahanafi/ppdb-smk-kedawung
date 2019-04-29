<?php
include_once '../function/main.php';
global $link;
$id_user = @$_GET['id_user'];
$sql = "SELECT `tb_users`.*, `tb_biodata` .* FROM `tb_users` JOIN `tb_biodata` ON `tb_users`.`id` = `tb_biodata`.`id_user` WHERE `tb_users`.`id` = '$id_user' ";
$exc = mysqli_query($link, $sql);
$data = mysqli_fetch_assoc($exc);


?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Edit Jalur Pendaftaran</h3>
		<br>
		<form action="" method="post" class="form-group">
			<label for="name">Nama</label>
			<input type="text" name="name" class="form-control" value="<?= $data['name']; ?>" disabled>
			<br>

			<label for="no_peserta">No. Peserta</label>
			<input type="text" name="no_peserta" class="form-control" value="<?= $data['no_peserta']; ?>" disabled>
			<br>

			<select name="pil_daftar" class="form-control" requred>
				<option value="">-- Pilih Jalur Pendaftaran --</option>
				<option value="Afirmasi">Afirmasi</option>
				<option value="Akademis">Akademis</option>
				<option value="Prestasi">Prestasi</option>
				<option value="PGRI">PGRI</option>
			</select>
			<br>
			<input type="submit" name="submit" class="btn btn-primary" value="Simpan!">
			<a href="detail.<?= $id_user; ?>" class="btn btn-info">Kembali</a>
		</form>
	</div>
</div>

<?php

if (isset($_POST['submit'])) {
	$pil_daftar = $_POST['pil_daftar'];

	$sql_upd = "UPDATE tb_users SET pil_daftar = '$pil_daftar' WHERE id = '$id_user' ";
	$ex_up = mysqli_query($link, $sql_upd);

	//die(var_dump($ex_up));

	if ($ex_up) {
		echo "<script>alert('Jalur pendaftaran berhasil diedit');window.location='detail.$id_user';</script>";
	} else {
		echo "<script>alert('Gagal diedit');window.location='detail.$id_user';</script>";
	}
}



?>