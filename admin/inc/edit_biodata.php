<?php
$id_user = @$_GET['id_user'];

$sql_bio = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exec_bio = mysqli_query($link, $sql_bio);
$x = mysqli_fetch_assoc($exec_bio);
$lev = @$_SESSION['admin']['level'];
$smp = get_smp();

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

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Edit Biodata Siswa</h3>
		<br>
		<form action="" method="post">
		<table class="table">
			<tr>
				<th  class="col-md-3">Nama Lengkap</th>
				<td>:</td>
				<td><input type="text" name="name" class="form-control" value="<?= $x['name']; ?>"></td>
			</tr>
			<tr>
				<th>NISN</th>
				<td>:</td>
				<td><input type="text" name="nisn" class="form-control" value="<?= $x['nisn']; ?>"></td>
			</tr>
			<tr>
				<th>Tempat Lahir</th>
				<td>:</td>
				<td><input type="text" name="tmp_lahir" class="form-control" value="<?= $x['tmp_lahir']; ?>"></td>
			</tr>
			<tr>
				<th>Tanggal Lahir</th>
				<td>:</td>
				<td><input type="text" id="tgl" name="tgl_lahir" class="form-control" value="<?= $x['tgl_lahir']; ?>"></td>
			</tr>
			<tr>
				<th>Jenis Kelamin</th>
				<td>:</td>
				<td>
					<select name="jk" class="form-control" required>
						<option value="">-- Pilih Jenis Kelamin --</option>
						<option value="Laki-Laki">Laki-Laki</option>
						<option value="Perempuan" selected>Perempuan</option>
					</select>
				</td>
			</tr>
				<th>Agama</th>
				<td>:</td>
				<td>
					<select name="agama" class="form-control">
						<option value="">-- Pilih Agama --</option>
						<option value="Islam" selected>Islam</option>
						<option value="Budha">Budha</option>
						<option value="Hindu">Hindu</option>
						<option value="Katolik">Katolik</option>
						<option value="Protestan">Protestan</option>
					</select>
				</td>
			<tr>
				<th>Nomor HP</th>
				<td>:</td>
				<td><input type="text" name="no_hp" class="form-control" value="<?= $x['no_hp']; ?>"></td>
			</tr>
			<tr>
				<th>Asal SMP</th>
				<td>:</td>
				<td>
					<select name="asal_smp1" class="form-control">
						<option value="">-- Pilih Asal SMP --</option>
						<?php while ($asal = mysqli_fetch_assoc($smp)) { ?>
						<option value="<?= $asal['nama_smp']; ?>"><?= $asal['nama_smp']; ?></option>
						<?php } ?>
						<option value="">Tulis di kolom bawah</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><input type="text" name="asal_smp2" class="form-control" value="<?= $x['asal_smp'] ?>"></td>
			</tr>
			<tr>
				<th>Alamat</th>
				<td>:</td>
				<td>
					<textarea name="alamat" class="form-control"><?= $x['alamat']; ?></textarea>
				</td>
			</tr>
			<tr>
				<th>Catatan</th>
				<td>:</td>
				<td>
			<?php
				if($lev == 1){				
					echo "<input type='text' name='catatan' class='form-control' value='$x[catatan]'>";
				} else {
					echo "<input type='text' name='catatan' class='form-control' value='$x[catatan]' disabled>";
				}

			?>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>
					<input type="submit" name="simpan" value="Simpan!" class="btn btn-primary">
					<span class="batas"></span>
					<input type="reset" name="reset" value="Reset!" class="btn btn-warning">
					<span class="batas"></span>
					<a href="detail.<?= $x['id_user']; ?>" class="btn btn-info">Kembali</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>

<?php

if (isset($_POST['simpan'])) {
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

	$sql_upd = "UPDATE tb_biodata SET id_user = '$id_user', name = '$name', nisn = '$nisn', tmp_lahir = '$tmp_lahir', tgl_lahir = '$tgl_lahir', jk = '$jk', agama = '$agama', no_hp = '$no_hp', asal_smp = '$asal_smp', alamat = '$alamat', catatan = '$catatan' WHERE id_user = '$id_user' ";

	$exc_upd = mysqli_query($link, $sql_upd);

	if ($exc_upd) {
		echo "<script>alert('Berhasil di edit!');window.location='detail.$id_user';</script>";
	} else {
		echo "<script>alert('Gagal di edit!');</script>";
	}
}

?>