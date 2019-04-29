<?php
include_once '../function/main.php';
global $link;

$id_user = @$_SESSION['student']['id_user'];
//$id_ortu = @$_GET['id'];

$sql_ot = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user'";
$exec_ot = mysqli_query($link, $sql_ot);
$ot = mysqli_num_rows($exec_ot);
$ortu = mysqli_fetch_array($exec_ot);

?>
<div class="formular">
	<form action="" method="post">
		<h4>Lengkapi Data Orang Tua Anda</h4>
		<br>
		<div class="col-md-2">
			<label for="nama_ayah">Nama Ayah</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="nama_ayah" class="form-control" placeholder="Nama Ayah" value="<?= $ortu['nama_ayah']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_ayah">Pekerjaan Ayah</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_ayah" class="form-control" placeholder="Pekerjaan Ayah" value="<?= $ortu['pkrjn_ayah']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="nama_ibu">Nama Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="nama_ibu" class="form-control" placeholder="Nama Ibu" value="<?= $ortu['nama_ibu']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_ibu">Pekerjaan Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_ibu" class="form-control" placeholder="Pekerjaan Ibu" value="<?= $ortu['pkrjn_ibu']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="no_hp_ortu">Nomor HP Ayah/Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="number" name="no_hp_ortu" class="form-control" placeholder="Nomor HP Ayah/Ibu" value="<?= $ortu['no_hp_ortu']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="alamat_ortu">Alamat Ayah/Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<textarea name="alamat_ortu" class="form-control" placeholder="Alamat Lengkap"><?= $ortu['alamat_ortu']; ?></textarea>
			<br>
		</div>
		<div class="col-md-12">
			<h3>Data Wali</h3>
			<br>
		</div>
		<div class="col-md-2">
			<label for="nama_wali">Nama Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="nama_wali" class="form-control" placeholder="Nama Wali" value="<?= $ortu['nama_wali']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_wali">Pekerjaan Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_wali" class="form-control" placeholder="Pekerjaan Wali" value="<?= $ortu['pkrjn_wali']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="no_hp_wali">Nomor HP Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="number" nsme="no_hp_wali" class="form-control" placeholder="Nomor HP Wali" value="<?= $ortu['no_hp_wali']; ?>">
			<br>
		</div>
		<div class="col-md-2">
			<label for="alamat_wali">Alamat Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<textarea name="alamat_wali" class="form-control" placeholder="Alamat Lengkap"><?= $ortu['alamat_wali']; ?></textarea>
			<br>
		</div>
		<div class="col-md-4 col-md-offset-2">
			<input type="submit" name="simpan" value="Simpan" class="btn-primary form-control">
		</div>
	</form>
</div>

<?php
	if (isset($_POST['simpan'])) {
		$id_user		= $_SESSION['student']['id_user'];
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

		$sql = "UPDATE tb_orangtua SET nama_ayah = '$nama_ayah', pkrjn_ayah = '$pkrjn_ayah', nama_ibu = '$nama_ibu', pkrjn_ibu = '$pkrjn_ibu', no_hp_ortu = '$no_hp_ortu', alamat_ortu = '$alamat_ortu', nama_wali = '$nama_wali', pkrjn_wali = '$pkrjn_wali', no_hp_wali = '$no_hp_wali', alamat_wali = '$alamat_wali' WHERE id_user = '$id_user'";
		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));
		//die(print_r($exec));
		if ($exec) { ?>
			<script>alert('Data berhasil disimpan!');window.location='konfirmasi';</script>
	<?php	} else { ?>
			<script>alert('Data Gagal disimpnan!');window.location='data.orang.tua';</script>
	<?php
		}
	}
?>