<?php
include_once '../function/main.php';
global $link;

$id_user = @$_SESSION['student']['id_user'];
$sql_ot = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user'";
$exec_ot = mysqli_query($link, $sql_ot);
$ot = mysqli_num_rows($exec_ot);
$ortu = mysqli_fetch_array($exec_ot);

if ($ot == 0) {

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
			<input type="text" name="nama_ayah" class="form-control" placeholder="Nama Ayah">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_ayah">Pekerjaan Ayah</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_ayah" class="form-control" placeholder="Tulis nama pekerjaan beserta Instansinya">
			<!--select name="pkrjn_ayah" class="form-control" required>
				<option value=""> Pilih Pkerjaan Ayah </option>
				<option value="Nelayan">Nelayan</option>
				<option value="Petani">Petani</option>
				<option value="Peternak">Peternak</option>
				<option value="PNS/TNI/POLRI">PNS/TNI/POLRI</option>
				<option value="Karyawan Swasta">Karyawan Swasta</option>
				<option value="Wiraswasta">Wiraswasta</option>
				<option value="Wirausaha">Wirausaha</option>
				<option value="Buruh">Buruh</option>
				<option value="Pensiunan">Pensiunan</option>
				<option value="Pedagang Kecil">Pedagang Kecil</option>
				<option value="Tenaga Kerja Indonesia">Tenaga Kerja Indonesia</option>
				<option value="Lainnya">Lainnya</option>
			</select-->
		<br>
		</div>
		<div class="col-md-2">
			<label for="nama_ibu">Nama Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="nama_ibu" class="form-control" placeholder="Nama Ibu">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_ibu">Pekerjaan Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_ibu" class="form-control" placeholder="Tulis nama pekerjaan beserta Instansinya">
			<br>
		</div>
		<div class="col-md-2">
			<label for="no_hp_ortu">Nomor HP Ayah/Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="number" name="no_hp_ortu" class="form-control" placeholder="Nomor HP Ayah/Ibu">
			<br>
		</div>
		<div class="col-md-2">
			<label for="alamat_ortu">Alamat Ayah/Ibu</label>
			<br>
		</div>
		<div class="col-md-10">
			<textarea name="alamat_ortu" class="form-control" placeholder="Alamat Lengkap"></textarea>
			<br>
		</div>
		<div class="col-md-2">&nbsp;</div>
		<div class="col-md-10">
			<div class="catatan">
				Jika orang tua masih ada, kolom WALI dikosongkan saja!
			</div>
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
			<input type="text" name="nama_wali" class="form-control" placeholder="Nama Wali">
			<br>
		</div>
		<div class="col-md-2">
			<label for="pkrjn_wali">Pekerjaan Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="text" name="pkrjn_wali" class="form-control" placeholder="Pekerjaan Wali">
			<br>
		</div>
		<div class="col-md-2">
			<label for="no_hp_wali">Nomor HP Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<input type="number" nsme="no_hp_wali" class="form-control" placeholder="Nomor HP Wali">
			<br>
		</div>
		<div class="col-md-2">
			<label for="alamat_wali">Alamat Wali</label>
			<br>
		</div>
		<div class="col-md-10">
			<textarea name="alamat_wali" class="form-control" placeholder="Alamat Lengkap"></textarea>
			<br>
		</div>
		<div class="col-md-4 col-md-offset-2">
			<input type="submit" name="simpan" value="Simpan" class="btn-primary form-control">
		</div>
		<?php include 'note.php'; ?>
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

		$sql = "INSERT INTO tb_orangtua (id, id_user, nama_ayah, pkrjn_ayah, nama_ibu, pkrjn_ibu, no_hp_ortu, alamat_ortu, nama_wali, pkrjn_wali, no_hp_wali,  alamat_wali) VALUES (null, '$id_user', '$nama_ayah', '$pkrjn_ayah', '$nama_ibu', '$pkrjn_ibu', '$no_hp_ortu', '$alamat_ortu', '$nama_wali', '$pkrjn_wali', '$no_hp_wali',  '$alamat_wali')";
		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));
		//die(print_r($exec));
		if ($exec) { ?>
			<script>alert('Data berhasil disimpnan!');window.location='nilai';</script>
	<?php	} else { ?>
			<script>alert('Data Gagal disimpnan!');window.location='data.orang.tua';</script>
	<?php
		}
	}
} else { ?>

<div class="formular">
	<h4>Data Orang Tua Calon Siswa</h4>
	<br>
	<table class="table" style="width:70% !important;">
			<tr>
				<th>Nama Ayah</th>
				<td>:</td>
				<td><?= $ortu['nama_ayah']; ?></td>
			</tr>
			<tr>
				<th>Pekerjaan Ayah</th>
				<td>:</td>
				<td><?= $ortu['pkrjn_ayah']; ?></td>
			</tr>
			<tr>
				<th>Nama Ibu</th>
				<td>:</td>
				<td><?= $ortu['nama_ibu']; ?></td>
			</tr>
			<tr>
				<th>Pekerjaan Ibu</th>
				<td>:</td>
				<td><?= $ortu['pkrjn_ibu']; ?></td>
			</tr>
			<tr>
				<th>No. HP Ayah/Ibu</th>
				<td>:</td>
				<td><?= $ortu['no_hp_ortu']; ?></td>
			</tr>
			<tr>
				<th>Alamat Ayah/Ibu</th>
				<td>:</td>
				<td><?= $ortu['alamat_ortu']; ?></td>
			</tr>
			<tr>
				<th>Nama Wali</th>
				<td>:</td>
				<td><?= $ortu['nama_wali']; ?></td>
			</tr>
			<tr>
				<th>Pekerjaan Wali</th>
				<td>:</td>
				<td><?= $ortu['pkrjn_wali']; ?></td>
			</tr>
			<tr>
				<th>No. HP Wali</th>
				<td>:</td>
				<td><?php //$ortu['no_hp_wali']; ?></td>
			</tr>
			<tr>
				<th>Alamat Wali</th>
				<td>:</td>
				<td><?= $ortu['alamat_wali']; ?></td>
			</tr>
	</table>
	<a href="nilai" class="btn btn-info">Selanjutnya</a>
</div>

	
<?php
}
?>