<?php

$id_user = @$_GET['id_user'];

$sql = "SELECT `tb_biodata` .* , `tb_nilai` .* FROM `tb_biodata` JOIN `tb_nilai` ON `tb_biodata` .`id_user` = `tb_nilai` .`id_user` WHERE `tb_biodata`.`id_user` = '$id_user'";
$exc = mysqli_query($link, $sql);
$a = mysqli_fetch_assoc($exc);

?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Edit Nilai Test</h3>
		<br>
		<form action="" method="post">
			<table class="table">
				<tr>
					<th class="col-md-3">Nama</th>
					<td>:</td>
					<td><input type="text" name="name" class="form-control" value="<?= $a['name']; ?>" disabled="on"></td>
				</tr>
				<tr>
					<th class="col-md-3">No. Peserta</th>
					<td>:</td>
					<td><input type="text" name="no_peserta" class="form-control" value="<?= $a['no_peserta']; ?>" disabled="on"></td>
				</tr>
				<tr>
					<th class="col-md-3">NEM</th>
					<td>:</td>
					<td><input type="text" name="nem" class="form-control" value="<?= $a['nem']; ?>" disabled="on"></td>
				</tr>
				<tr>
					<th class="col-md-3">Nilai Test Akademik</th>
					<td>:</td>
					<td><input type="text" name="akademik" class="form-control" value="<?= $a['akademik']; ?>" autocomplete="off"></td>
				</tr>
				<tr>
					<th class="col-md-3">Nilai Test Kejuruan</th>
					<td>:</td>
					<td><input type="text" name="kejuruan" class="form-control" value="<?= $a['kejuruan']; ?>" autocomplete="off"></td>
				</tr>
				<tr>
					<th class="col-md-3">Nilai Psikotes</th>
					<td>:</td>
					<td><input type="text" name="psikotes" class="form-control" value="<?= $a['psikotes']; ?>"  autocomplete="off"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<input type="submit" name="simpan" value="Simpan!" class="btn btn-primary">
						<span class="batas"></span>
						<input type="reset" name="reset" value="Reset!" class="btn btn-warning">
						<span class="batas"></span>
						<a href="nilai.test" class="btn btn-info">Kembali</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

<?php

if (isset($_POST['simpan'])) {
	$akademik 	= $_POST['akademik'];
	$kejuruan 	= $_POST['kejuruan'];
	$psikotes 	= $_POST['psikotes'];

	$sql_upd = "UPDATE tb_nilai SET akademik = '$akademik', kejuruan = '$kejuruan', psikotes = '$psikotes' WHERE id_user = '$id_user'";

	$ex_upd = mysqli_query($link, $sql_upd);

	//die( var_dump($ex_upd));
	
	if ($ex_upd) {
		echo "<script>alert('Nilai Test berhasil di Simpan!');window.location='nilai.test';</script>";
	} else {
		echo "<script>alert('Nilai Test gagal di Simpan!');</script>";
	}
}



?>