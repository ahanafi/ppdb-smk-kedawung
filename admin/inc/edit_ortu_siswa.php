<?php
$id_user = @$_GET['id_user'];

$sql = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user' ";
$exc = mysqli_query($link, $sql);
$ot = mysqli_fetch_array($exc);
?>

<div class="panel panel-default">
 	<div class="panel-body content-adm">
		<h3>Edit Data Orang Tua/Wali Siswa</h3>
		<br>
		<form action="" method="post">
			<table class="table">
				<tr>
					<th class="col-md-3">Nama Ayah</th>
					<td>:</td>
					<td><input type="text" name="nama_ayah" class="form-control" value="<?= $ot['nama_ayah']; ?>"></td>
				</tr>
				<tr>
					<th>Pekerjaan Ayah</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_ayah" class="form-control" value="<?= $ot['pkrjn_ayah']; ?>"></td>
				</tr>
				<tr>
					<th>Nama Ibu</th>
					<td>:</td>
					<td><input type="text" name="nama_ibu" class="form-control" value="<?= $ot['nama_ibu']; ?>"></td>
				</tr>
				<tr>
					<th>Pekerjaan Ibu</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_ibu" class="form-control" value="<?= $ot['pkrjn_ibu']; ?>"></td>
				</tr>
				<tr>
					<th>NO. HP Ayah/Ibu</th>
					<td>:</td>
					<td><input type="text" name="no_hp_ortu" class="form-control" value="<?= $ot['no_hp_ortu']; ?>"></td>
				</tr>
				<tr>
					<th>Alamat Ayah/Ibu</th>
					<td>:</td>
					<td>
						<textarea name="alamat_ortu" class="form-control" ><?= $ot['alamat_ortu']; ?></textarea>
					</td>
				</tr>

				<!-- BATAS -->

				<tr>
					<th>Nama Wali</th>
					<td>:</td>
					<td><input type="text" name="nama_wali" class="form-control" value="<?= $ot['nama_wali']; ?>"></td>
				</tr>
				<tr>
					<th>Pekerjaan Wali</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_wali" class="form-control" value="<?= $ot['pkrjn_wali']; ?>"></td>
				</tr>
				<tr>
					<th>NO. HP Wali</th>
					<td>:</td>
					<td><input type="text" name="no_hp_wali" class="form-control" value="<?= $ot['no_hp_wali']; ?>"></td>
				</tr>
				<tr>
					<th>Alamat Wali</th>
					<td>:</td>
					<td>
						<textarea name="alamat_wali" class="form-control" ><?= $ot['alamat_wali']; ?></textarea>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<input type="submit" name="submit" class="btn btn-primary" value="Simpan!">
						<span class="batas"></span>
						<input type="reset" name="reset" class="btn btn-warning" value="Reset!">
						<span class="batas"></span>
						<a href="detail.<?= $ot['id_user']; ?>" class="btn btn-info">Kembali</a>
					</td>
				</tr>	
			</table>
		</form>
	</div>
</div>

<?php
	if (isset($_POST['submit'])) {
		$nama_ayah		= $_POST['nama_ayah'];	
		$pkrjn_ayah		= $_POST['pkrjn_ayah'];	
		$nama_ibu		= $_POST['nama_ibu'];	
		$pkrjn_ibu		= $_POST['pkrjn_ibu'];	
		$no_hp_ortu		= $_POST['no_hp_ortu'];	
		$alamat_ortu	= $_POST['alamat_ortu'];	
		$nama_wali		= $_POST['nama_wali'];	
		$pkrjn_wali		= $_POST['pkrjn_wali'];	
		$no_hp_wali		= @$_POST['no_hp_wali'];	
		$alamat_wali	= $_POST['alamat_wali'];

		$sql = "UPDATE tb_orangtua SET id_user = '$id_user', nama_ayah = '$nama_ayah', pkrjn_ayah = '$pkrjn_ayah', nama_ibu = '$nama_ibu', pkrjn_ibu = '$pkrjn_ibu', no_hp_ortu = '$no_hp_ortu', alamat_ortu = '$alamat_ortu', nama_wali = '$nama_wali', pkrjn_wali = '$pkrjn_wali', no_hp_wali = '$no_hp_wali', alamat_wali = '$alamat_wali' WHERE id_user = '$id_user'";
		
		$exec = mysqli_query($link, $sql);
		
		if ($exec) {
			echo "<script>alert('Berhasil di edit!');window.location='detail.$id_user';</script>";
		} else {
			echo "<script>alert('Gagal di edit!');</script>";
		}

}

?>