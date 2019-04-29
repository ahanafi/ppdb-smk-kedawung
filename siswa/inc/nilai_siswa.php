<?php
include_once '../function/main.php';
global $link;

$id_user = $_SESSION['student']['id_user'];

$sql_nilai = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
$exec_nilai = mysqli_query($link, $sql_nilai);
$num = mysqli_num_rows($exec_nilai);
$n = mysqli_fetch_assoc($exec_nilai);

if ($num == 0) {
?>
<div class="formular">
	<h4>Lengkapi Data Kelulusan Anda</h4>
	<br>
	<form action="" method="post" class="form-group">
		<div class="col-md-12">
			<h3>1. Data Kelulusan</h3>
			<br>
		</div>
		<div class="col-md-3">
			<label for="bindo">Nilai Bahasa Indonesia</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="bindo" class="form-control" placeholder="Bahasa Indonesia" required max-length="2">
			<strong>Pada nilai, gunakan titik (.) untuk pengganti koma (,)</strong>
			<br>
		</div>
		<div class="col-md-3">
			<label for="ipa">Nilai Ilmu Pengetahuan Alam</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="ipa" class="form-control" placeholder="Nilai Ilmu Pengatahuan Alam" max-length="2" required>
			<strong>Pada nilai, gunakan titik (.) untuk pengganti koma (,)</strong>
			<br>
		</div>
		<div class="col-md-3">
			<label for="mtk">Nilai Matematika</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="mtk" class="form-control" placeholder="Nilai Matematika" required>
			<strong>Pada nilai, gunakan titik (.) untuk pengganti koma (,)</strong>
			<br>
		</div>
		<div class="col-md-3">
			<label for="binggris">Nilai Bahasa Inggris</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="binggris" class="form-control" placeholder="Nilai Bahasa Inggris" required>
			<strong>Pada nilai, gunakan titik (.) untuk pengganti koma (,)</strong>
			<br>
		</div>
		<div class="col-md-3">&nbsp;</div>
		<div class="col-md-9">
			<div class="catatan">
				Jika belum mendapatkan <b>Ijazah</b> dan <b>SKHUN</b>, silahkan KOSONGKAN pada bagian Nomor dan Tanggal Ijazah dan SKHUN
			</div>
		</div>
		<div class="col-md-3">
			<label for="no_ijazah">No. Ijazah</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="no_ijazah" class="form-control" placeholder="Nomor Ijazah">
			<br>
		</div>
		<div class="col-md-3">
			<label for="tgl_ijazah">Tanggal Ijazah</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="tgl_ijazah" id="tgl_ijazah" class="form-control" placeholder="yyyy-mm-dd">
			<br>
		</div>
		<div class="col-md-3">
			<label for="no_skhun">No. SKHUN</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="no_skhun" class="form-control" placeholder="Nomor SKHUN">
			<br>
		</div>
		<div class="col-md-3">
			<label for="tgl_skhun">Tanggal SKHUN</label>
			<br>
		</div>
		<div class="col-md-9">
			<input type="text" name="tgl_skhun" id="tgl_skhun" class="form-control" placeholder="yyyy-mm-dd">
		</div>

		<!-- batas -->

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
		<?php include 'note.php'; ?>
	</form>
</div>
<p style="color:red;padding:5px;">Gunakan tanda (.) titik untuk Koma (,)</p>

<?php
	if (isset($_POST['submit'])) {
		$id_user	= $_SESSION['student']['id_user'];
		$bindo		= $_POST['bindo'];
		$ipa		= $_POST['ipa'];
		$mtk		= $_POST['mtk'];
		$binggris	= $_POST['binggris'];
		$jum_nilai	= ($bindo+$ipa+$mtk+$binggris);
		$nem 		= $jum_nilai/10;
		$no_ijazah	= $_POST['no_ijazah'];
		$tgl_ijazah	= $_POST['tgl_ijazah'];
		$no_skhun	= $_POST['no_skhun'];
		$tgl_skhun	= $_POST['tgl_skhun'];
		$pilihan_1	= $_POST['pilihan_1'];
		$pilihan_2	= $_POST['pilihan_2'];

		$sql = "INSERT INTO tb_nilai (id, id_user, bindo, ipa, mtk, binggris, nem, no_ijazah, tgl_ijazah, no_skhun, tgl_skhun
		, kejuruan, psikotes, pilihan_1, pilihan_2) VALUES
		(null, '$id_user', '$bindo', '$ipa', '$mtk', '$binggris', '$nem', '$no_ijazah', '$tgl_ijazah', '$no_skhun', '$tgl_skhun', 0, 0, '$pilihan_1', '$pilihan_2')";

		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));
		if ($exec) { ?>
			<script>alert('Data berhasil disimpnan!');window.location='konfirmasi';</script>
	<?php } else { ?>
			<script>alert('Data Gagal disimpnan!');window.location='nilai';</script>
	<?php
		}
	}
} else { ?>

<div class="formular">
	<h4>Data Nilai dan Prodi Calon Siswa</h4>
	<br>
	<table class="table">
			<tr>
				<th colspan="7"><h4>1. Data Nilai</h4></th>
			</tr>
			<tr style="text-align:center;">
				<th>Mata Pelajaran</th>
				<td>B. Indonesia</td>
				<td>Ilmu Pengetahuan Alam</td>
				<td>Matematika</td>
				<td>B. Inggris</td>
			</tr>
			<tr class="nilai">
				<th style="text-align:left !important;">Nilai</th>
				<th><?= $n['bindo']; ?></th>
				<th><?= $n['ipa']; ?></th>
				<th><?= $n['mtk']; ?></th>
				<th><?= $n['binggris']; ?></th>
			</tr>
			<tr>
				<th style="text-align:left !important;">NEM</th>
				<th style="text-align:center;"><?= $n['nem']; ?></th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<th colspan="7"><h4>2. Data Kelulusan</h4></th>
			</tr>
			<tr>
				<th>No. Ijazah</th>
				<td style="text-align:center;"><?= $n['no_ijazah']; ?></td>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<th>Tanggal Ijazah</th>
				<td style="text-align:center;"><?= $n['tgl_ijazah']; ?></td>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<th>No. SKHUN</th>
				<td style="text-align:center;"><?= $n['no_skhun']; ?></td>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<th>Tanggal SKHUN</th>
				<td style="text-align:center;"><?= $n['tgl_skhun']; ?></td>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<th colspan="7"><h4>3. Data Kejuruan</h4></th>
			</tr>
			<tr>
				<td colspan="2">Pilihan ke-1</td>
				<td colspan="3">Pilihan ke-2</td>
			</tr>
			<tr>
				<th colspan="2"><?= $n['pilihan_1']; ?></th>
				<th colspan="3"><?= $n['pilihan_2']; ?></th>
			</tr>
	</table>
	<a href="konfirmasi" class="btn btn-info">Selanjutnya</a>
</div>

<?php
}
?>