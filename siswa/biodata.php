<?php 
///session_start();
include_once '../function/main.php';
global $link;
$sql_smp = "SELECT * FROM tb_smp ";
$exec_smp = mysqli_query($link, $sql_smp);

$id_user = @$_SESSION['student']['id_user'];
$sql_bio = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exec_bio = mysqli_query($link, $sql_bio);
$bio = mysqli_num_rows($exec_bio);
$x = mysqli_fetch_array($exec_bio);
//die(var_dump($exec_bio));
if ($bio == 0) {
?>
<div class="container">
	<div class="formular">
		<form action="" method="post">
			<h4>Lengkapi Biodata Anda</h4>
			<table class="table table-form">
				<tr>
					<td class="col-md-3">Nama Lengkap</td>
					<td>:</td>
					<td><input type="text" name="name" class="form-control" placeholder="Nama Lengkap" required></td>
				</tr>
				<tr>
					<td class="col-md-3">NISN</td>
					<td>:</td>
					<td><input type="text" name="nisn" class="form-control" placeholder="NISN"  required></td>
				</tr>
				<tr>
					<td class="col-md-3">Tempat Lahir</td>
					<td>:</td>
					<td><input type="text" name="tmp_lahir" class="form-control" placeholder="Tempat Lahir"  required value="Cirebon"></td>
				</tr>
				<tr>
					<td class="col-md-3">Tanggal Lahir</td>
					<td>:</td>
					<td><input type="date" name="tgl_lahir" id="tgl" class="form-control" placeholder="DD/MM/YYYY"  required></td>
				</tr>
				<tr>
					<td class="col-md-3">Jenis Kelamin</td>
					<td>:</td>
					<td>
						<input type="radio" name="jk" value="Laki-Laki"> Laki-Laki <i class="batas"></i>
						<input type="radio" name="jk" value="Perempuan"> Perempuan
					</td>
				</tr>
				<tr>
					<td class="col-md-3">Agama</td>
					<td>:</td>
					<td>
						<select name="agama" id="" class="form-control"  required>
							<option value="">-- Pilih Agama --</option>
							<option value="Islam">Islam</option>
							<option value="Budha">Budha</option>
							<option value="Hindu">Hindu</option>
							<option value="Katolik">Katolik</option>
							<option value="Protestan">Protestan</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="col-md-3">No. HP</td>
					<td>:</td>
					<td><input type="text" name="no_hp" class="form-control" placeholder="Nomor Handphone" required></td>
				</tr>
				<tr>
					<td class="col-md-3">Asal SMP</td>
					<td>:</td>
					<td>
						<select name="asal_smp" class="form-control">
							<option value="">-- Pilih Asal SMP --</option>
							<?php while ($smp = mysqli_fetch_array($exec_smp)) { ?>
							<option value="<?= $smp['nama_smp']; ?>"><?= $smp['nama_smp']; ?></option>
							<?php } ?>
							<option value="">Tulis dikolom bawah</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><input type="text" name="asal_smp" placeholder="Asal Sekolah Menengan Pertama" class="form-control"></td>
				</tr>
				<tr>
					<td class="col-md-3">Alamat</td>
					<td>:</td>
					<td>
						<textarea name="alamat" cols="5" class="form-control"  placeholder="Alamat Lengkap" required></textarea>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><input type="hidden" name="verifikasi"  value="0"></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
					<td><input type="submit" name="simpan" value="Simpan!" class="btn btn-primary"></td>
				</tr>
			</table>
		</form>
	</div>
</div>
<?php
	if (isset($_POST['simpan'])) {
	$id_user	= $_SESSION['student']['id_user'];
	$name 		= $_POST['name'];
	$nisn 		= $_POST['nisn'];
	$tmp_lahir 	= $_POST['tmp_lahir'];
	$tgl_lahir 	= $_POST['tgl_lahir'];
	$jk 		= $_POST['jk'];
	$agama 		= $_POST['agama'];
	$no_hp 		= $_POST['no_hp'];
	$asal_smp 	= $_POST['asal_smp'];
	$alamat 	= $_POST['alamat'];
	$verifikasi = $_POST['verifikasi'];

	$sql_insert = "INSERT INTO `tb_biodata` (`id`, `id_user`, `name`, `nisn`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`, `asal_smp`, `no_peserta`, `verifikasi`) VALUES (null, '$id_user', '$name', '$nisn', '$tmp_lahir', '$tgl_lahir', '$jk', '$agama', '$no_hp', '$alamat', '$asal_smp', null, '$verifikasi')";

	//die(print_r($sql_insert));
	global $link;
	$exc = mysqli_query($link, $sql_insert);
	die(var_dump($sql_insert));
	if ($exc) { ?>
		<script>alert('Data berhasil disimpan!');window.location='data.orang.tua';</script>
	<?php } else { ?>
			<script>alert('Data Gagal disimpan!');window.location='biodata';</script>
	<?php
		}
	}
} else { ?>
<div class="container">
	<div class="formular">
		<h4>Biodata Anda</h4>
		<br>
		<table class="table">
				<tr>
					<th>Nama</th>
					<td>:</td>
					<td><?= $x['name']; ?></td>
				</tr>
				<tr>
					<th>NISN</th>
					<td>:</td>
					<td><?= $x['nisn'] ?></td>
				</tr>
				<tr>
					<th>Tempat Lahir</th>
					<td>:</td>
					<td><?= $x['tmp_lahir'] ?></td>
				</tr>
				<tr>
					<th>Tanggal Lahir</th>
					<td>:</td>
					<td><?= $x['tgl_lahir'] ?></td>
				</tr>
				<tr>
					<th>Jenis Kelamin</th>
					<td>:</td>
					<td><?= $x['jk'] ?></td>
				</tr>
				<tr>
					<th>Agama</th>
					<td>:</td>
					<td><?= $x['agama'] ?></td>
				</tr>
				<tr>
					<th>No. HP</th>
					<td>:</td>
					<td><?= $x['no_hp'] ?></td>
				</tr>
				<tr>
					<th>Asal SMP</th>
					<td>:</td>
					<td><?= $x['asal_smp'] ?></td>
				</tr>
				<tr>
					<th>Alamat</th>
					<td>:</td>
					<td><?= $x['alamat'] ?></td>
				</tr>
		</table>
		<a href="data.orang.tua" class="btn btn-info">Selanjutnya</a>
	</div>
</div>
<?php
}
?>