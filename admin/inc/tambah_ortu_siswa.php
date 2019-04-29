<?php
$id_user = @$_GET['id_user'];

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
					<td><input type="text" name="nama_ayah" class="form-control"></td>
				</tr>
				<tr>
					<th>Pekerjaan Ayah</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_ayah" class="form-control"></td>
				</tr>
				<tr>
					<th>Nama Ibu</th>
					<td>:</td>
					<td><input type="text" name="nama_ibu" class="form-control"></td>
				</tr>
				<tr>
					<th>Pekerjaan Ibu</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_ibu" class="form-control" ></td>
				</tr>
				<tr>
					<th>NO. HP Ayah/Ibu</th>
					<td>:</td>
					<td><input type="number" name="no_hp_ortu" class="form-control"></td>
				</tr>
				<tr>
					<th>Alamat Ayah/Ibu</th>
					<td>:</td>
					<td>
						<textarea name="alamat_ortu" class="form-control" ></textarea>
					</td>
				</tr>

				<!-- BATAS -->

				<tr>
					<th>Nama Wali</th>
					<td>:</td>
					<td><input type="text" name="nama_wali" class="form-control"></td>
				</tr>
				<tr>
					<th>Pekerjaan Wali</th>
					<td>:</td>
					<td><input type="text" name="pkrjn_wali" class="form-control"></td>
				</tr>
				<tr>
					<th>NO. HP Wali</th>
					<td>:</td>
					<td><input type="number" name="no_hp_wali" class="form-control"></td>
				</tr>
				<tr>
					<th>Alamat Wali</th>
					<td>:</td>
					<td>
						<textarea name="alamat_wali" class="form-control" ></textarea>
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
						<a href="detail.<?= $id_user; ?>" class="btn btn-info">Kembali</a>
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

		$sql = "INSERT INTO tb_orangtua (id, id_user, nama_ayah, pkrjn_ayah, nama_ibu, pkrjn_ibu, no_hp_ortu, alamat_ortu, nama_wali, pkrjn_wali, no_hp_wali,  alamat_wali) VALUES (null, '$id_user', '$nama_ayah', '$pkrjn_ayah', '$nama_ibu', '$pkrjn_ibu', '$no_hp_ortu', '$alamat_ortu', '$nama_wali', '$pkrjn_wali', '$no_hp_wali',  '$alamat_wali')";
		
		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));
		
		if ($exec) {
			echo "<script>alert('Berhasil di edit!');window.location='detail.$id_user';</script>";
		} else {
			echo "<script>alert('Gagal di edit!');</script>";
		}

}

?>