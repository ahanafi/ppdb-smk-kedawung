<?php 
///session_start();
include_once '../function/main.php';
global $link;
$sql_smp = "SELECT * FROM tb_smp ";
$exec_smp = mysqli_query($link, $sql_smp);

$id_user = @$_SESSION['student']['id_user'];
$id_bio = @$_GET['id'];

$sql_bio = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exec_bio = mysqli_query($link, $sql_bio);
$x = mysqli_fetch_array($exec_bio);
?>

<script>
	$(document).ready(function(){
		$('#tgl').datepick({
			dateFormat: 'yyyy-mm-dd',
			yearRange: 'c-20:c+10',
		});
		$('#inlineDatepicker').datepick({
			onSelect: showDate
		});
	});
	function showDate(date){
		alert('Tanggal yang dipilih adalah ' + date);
	}
</script>

<div class="formular">
	<form action="" method="post">
		<h4>Lengkapi Biodata Anda</h4>
		<table class="table table-form">
			<tr>
				<td class="col-md-3">Nama Lengkap</td>
				<td>:</td>
				<td><input type="text" name="name" class="form-control" value="<?= $x['name']; ?>" placeholder="Nama Lengkap" required></td>
			</tr>
			<tr>
				<td class="col-md-3">NISN</td>
				<td>:</td>
				<td><input type="text" name="nisn" class="form-control" value="<?= $x['nisn']; ?>" placeholder="NISN"  required></td>
			</tr>
			<tr>
				<td class="col-md-3">Tempat Lahir</td>
				<td>:</td>
				<td><input type="text" name="tmp_lahir" class="form-control" value="<?= $x['tmp_lahir']; ?>" placeholder="Tempat Lahir"  required></td>
			</tr>
			<tr>
				<td class="col-md-3">Tanggal Lahir</td>
				<td>:</td>
				<td><input type="text" name="tgl_lahir" id="tgl" class="form-control" value="<?= $x['tgl_lahir']; ?>" placeholder="DD/MM/YYYY"  required></td>
			</tr>
			<tr>
				<td class="col-md-3">Jenis Kelamin</td>
				<td>:</td>
				<td>
					<select name="jk" id="" class="form-control">
						<option value="Laki-Laki">Laki-Laki</option>
						<option value="Perempuan" selected>Perempuan</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="col-md-3">Agama</td>
				<td>:</td>
				<td>
					<select name="agama" id="" class="form-control"  required>
						<option value="">-- Pilih Agama --</option>
						<option value="Islam" selected>Islam</option>
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
				<td><input type="text" name="no_hp" class="form-control" value="<?= $x['no_hp']; ?>" placeholder="Nomor Handphone" required></td>
			</tr>
			<tr>
				<td class="col-md-3">Asal SMP</td>
				<td>:</td>
				<td>
					<select name="asal_smp1" class="form-control">
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
				<td><input type="text" name="asal_smp2" placeholder="Asal Sekolah Menengan Pertama" class="form-control" value="<?= $x['asal_smp']; ?>"></td>
			</tr>
			<tr>
				<td class="col-md-3">Alamat</td>
				<td>:</td>
				<td>
					<textarea name="alamat" cols="5" class="form-control"  placeholder="Alamat Lengkap" required><?= $x['alamat']; ?></textarea>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>
					<input type="hidden" name="verifikasi" value="0">
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
				<td><input type="submit" name="edit" value="Simpan!" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
</div>

<?php
	if (isset($_POST['edit'])) {
	$id_user	= $_SESSION['student']['id_user'];
	$name 		= $_POST['name'];
	$nisn 		= $_POST['nisn'];
	$tmp_lahir 	= $_POST['tmp_lahir'];
	$tgl_lahir 	= $_POST['tgl_lahir'];
	$jk 		= $_POST['jk'];
	$agama 		= $_POST['agama'];
	$no_hp 		= $_POST['no_hp'];
	$asal_smp1 	= $_POST['asal_smp1'];
	$asal_smp2 	= $_POST['asal_smp2'];
	$asal_smp 	= $asal_smp1.$asal_smp2;
	$alamat 	= $_POST['alamat'];
	$verifikasi = $_POST['verifikasi'];

	$sql_upd = "UPDATE tb_biodata SET id_user = '$id_user', name = '$name', nisn = '$nisn', tmp_lahir = '$tmp_lahir', tgl_lahir = '$tgl_lahir', jk = '$jk', agama = '$agama', no_hp = '$no_hp', asal_smp = '$asal_smp', alamat = '$alamat', verifikasi = '$verifikasi' WHERE id = '$id_bio'";

	$exc = mysqli_query($link, $sql_upd);
	//die(var_dump($exc));

	if ($exc) { ?>
		<script>alert('Data berhasil disimpan!');window.location='konfirmasi';</script>
	<?php } else { ?>
			<script>alert('Data Gagal disimpan!');window.location='biodata';</script>
	<?php
		}
	}
?>
