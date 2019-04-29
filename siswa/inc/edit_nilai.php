<?php
include_once '../function/main.php';
global $link;

$id_user = $_SESSION['student']['id_user'];
$id_nil = @$_GET['id'];

$sql_nilai = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
$exec_nilai = mysqli_query($link, $sql_nilai);
$n = mysqli_fetch_assoc($exec_nilai);
?>

<div class="formular">
	<h4>Lengkapi Data Nilai Anda</h4>
	<br>
	<form action="" method="post" class="form-group">
		<div class="col-md-12">
			<h3>1. Data Nilai</h3>
			<br>
		</div>
		<div class="col-md-3">
			<label for="bindo">Nilai Bahasa Indonesia</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="bindo" class="form-control" placeholder="Bahasa Indonesia" required value="<?= $n['bindo']; ?>">
			<br>
		</div>
		<div class="col-md-3">
			<label for="ipa">Nilai Ilmu Pengetahuan Alam</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="ipa" class="form-control" placeholder="Nilai Ilmu Pengatahuan Alam" required value="<?= $n['ipa']; ?>">
			<br>
		</div>
		<div class="col-md-3">
			<label for="mtk">Nilai Matematika</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="mtk" class="form-control" placeholder="Nilai Matematika" required value="<?= $n['mtk']; ?>">
			<br>
		</div>
		<div class="col-md-3">
			<label for="binggris">Nilai Bahasa Inggris</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="binggris" class="form-control" placeholder="Nilai Bahasa Inggris" required value="<?= $n['binggris']; ?>">
			<br>
		</div>
		<div class="col-md-12">
			<h3>2. Data Kejuruan</h3>
			<br>
		</div>
		<div class="col-md-3">
			<label for="pilihan_1">Pilihan ke-1</label>
			<br>
		</div>
		<div class="col-md-9">
			<select name="pilihan_1" class="form-control" required>
				<option value="">-- Pilihan Ke-1 --</option>
				<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
				<option value="Akuntansi">Akuntansi</option>
				<option value="Multimedia">Multimedia</option>
				<option value="Pemasaran">Pemasaran</option>
				<option value="Perbankan">Perbankan</option>
				<option value="Usaha Perjalanan Wisata">Usaha Perjalanan Wisata</option>
			</select>
			<br>
		</div>
		<div class="col-md-3">
			<label for="pilihan_2">Pilihan ke-2</label>
			<br>
		</div>
		<div class="col-md-9">
			<select name="pilihan_2" class="form-control" required>
				<option value="">-- Pilihan Ke-2 --</option>
				<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
				<option value="Akuntansi">Akuntansi</option>
				<option value="Multimedia">Multimedia</option>
				<option value="Pemasaran">Pemasaran</option>
				<option value="Perbankan">Perbankan</option>
				<option value="Usaha Perjalanan Wisata">Usaha Perjalanan Wisata</option>
			</select>
			<br>
		</div>
		<br><br><p></p>
		<div class="col-md-4 col-md-offset-3">
			<input type="submit" name="submit" value="Simpan" class="btn btn-primary form-control">
		</div>
	</form>
</div>
<p style="color:red;padding:5px;">Gunakan tanda (.) titik untuk Koma (,)</p>  <b> Contoh: 8.9</b>

<?php
	if (isset($_POST['submit'])) {
		$id_user	= $_SESSION['student']['id_user'];
		$bindo		= $_POST['bindo'];
		$ipa		= $_POST['ipa'];
		$mtk		= $_POST['mtk'];
		$binggris	= $_POST['binggris'];
		$jum_nilai	= ($bindo+$ipa+$mtk+$binggris);
		$nem 		= $jum_nilai/10;
		$pilihan_1	= $_POST['pilihan_1'];
		$pilihan_2	= $_POST['pilihan_2'];

		$sql = "UPDATE tb_nilai SET bindo = '$bindo', ipa = '$ipa', mtk = '$mtk', binggris = '$binggris', nem = '$nem', pilihan_1 = '$pilihan_1', pilihan_2 = '$pilihan_2' WHERE id_user = '$id_user'";

		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));
		
		if ($exec) { ?>
			<script>alert('Data berhasil disimpan!');window.location='konfirmasi';</script>
	<?php } else { ?>
			<script>alert('Data Gagal disimpan!');window.location='konfirmasi';</script>
	<?php
		}
	}
?>
