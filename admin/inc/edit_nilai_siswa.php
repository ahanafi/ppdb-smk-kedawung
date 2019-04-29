<?php

$id_user = @$_GET['id_user'];

$sql_nilai = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
$exec_nilai = mysqli_query($link, $sql_nilai);
$n = mysqli_fetch_assoc($exec_nilai);

?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Edit Data Nilai</h3>
		<br>
		<form action="" method="post">
			<table class="table">
				<tr>
					<th colspan="3">Nilai UN</th>
				</tr>
				<tr>
					<td class="col-md-3">B. Indonesia</td>
					<td>:</td>
					<td><input type="text" name="bindo" class="form-control" value="<?= $n['bindo']; ?>"></td>
				</tr>
				<tr>
					<td class="col-md-3">Ilmu Pengetahuan Alam</td>
					<td>:</td>
					<td><input type="text" name="ipa" class="form-control" value="<?= $n['ipa']; ?>"></td>
				</tr>
				<tr>
					<td class="col-md-3">Matematika</td>
					<td>:</td>
					<td><input type="text" name="mtk" class="form-control" value="<?= $n['mtk']; ?>"></td>
				</tr>
				<tr>
					<td class="col-md-3">B. Inggris</td>
					<td>:</td>
					<td><input type="text" name="binggris" class="form-control" value="<?= $n['binggris']; ?>"></td>
				</tr>
				<tr>
					<th colspan="3">Nilai Test</th>
				</tr>
				<tr>
					<td>Test Akademik</td>
					<td>:</td>
					<td><input type="number" name="akademik" class="form-control" value="<?= $n['akademik']; ?>"></td>
				</tr>
				<tr>
					<td>Test Kejuruan</td>
					<td>:</td>
					<td><input type="number" name="kejuruan" class="form-control" value="<?= $n['kejuruan']; ?>"></td>
				</tr>
				<tr>
					<td>Psikotes</td>
					<td>:</td>
					<td><input type="number" name="psikotes" class="form-control" value="<?= $n['psikotes']; ?>"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><p style="color:red;padding:5px;">Gunakan tanda (.) titik untuk Koma (,) <b> Contoh: 8.9</b></p></td>
				</tr>
				<tr>
					<th colspan="3">Data Kelulusan</th>
				</tr>
				<tr>
					<td>No. Ijazah</td>
					<td>:</td>
					<td><input type="text" name="no_ijazah" class="form-control" value="<?= $n['no_ijazah']; ?>"></td>
				</tr>
				<tr>
					<td>Tanggal Ijazah</td>
					<td>:</td>
					<td><input type="text" name="tgl_ijazah" id="tgl_ijazah" class="form-control" value="<?= $n['tgl_ijazah']; ?>"></td>
				</tr>
				<tr>
					<td>No. SKHUN</td>
					<td>:</td>
					<td><input type="text" name="no_skhun" class="form-control" value="<?= $n['no_skhun']; ?>"></td>
				</tr>
				<tr>
					<td>Tanggal SKHUN</td>
					<td>:</td>
					<td><input type="text" name="tgl_skhun" id="tgl_skhun" class="form-control" value="<?= $n['tgl_skhun']; ?>"></td>
				</tr>
				<tr>
					<th colspan="3">Data Prodi</th>
				</tr>
				<tr>
					<td>Pilihan Ke-1</td>
					<td>:</td>
					<td>
						<select name="pilihan_1" class="form-control" required>
							<option value="">-- Pilihan Ke-1 --</option>
							<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
							<option value="Akuntansi">Akuntansi</option>
							<option value="Multimedia">Multimedia</option>
							<option value="Pemasaran">Pemasaran</option>
							<option value="Perbankan">Perbankan</option>
							<option value="Usaha Perjalanan Wisata">Usaha Perjalanan Wisata</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Pilihan Ke-2</td>
					<td>:</td>
					<td>
						<select name="pilihan_2" class="form-control" required>
							<option value="">-- Pilihan Ke-2 --</option>
							<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
							<option value="Akuntansi">Akuntansi</option>
							<option value="Multimedia">Multimedia</option>
							<option value="Pemasaran">Pemasaran</option>
							<option value="Perbankan">Perbankan</option>
							<option value="Usaha Perjalanan Wisata">Usaha Perjalanan Wisata</option>
						</select>
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
						<a href="detail.<?= $n['id_user']; ?>" class="btn btn-info">Kembali</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

<?php

	if (isset($_POST['simpan'])) {
		$bindo		= $_POST['bindo'];
		$ipa		= $_POST['ipa'];
		$mtk		= $_POST['mtk'];
		$binggris	= $_POST['binggris'];
		$jum_nilai	= $bindo+$ipa+$mtk+$binggris;
		$nem 		= $jum_nilai/10;
		$no_ijazah	= $_POST['no_ijazah'];
		$tgl_ijazah	= $_POST['tgl_ijazah'];
		$no_skhun	= $_POST['no_skhun'];
		$tgl_skhun	= $_POST['tgl_skhun'];		
		$pilihan_1	= $_POST['pilihan_1'];
		$pilihan_2	= $_POST['pilihan_2'];

		$sql = "UPDATE tb_nilai SET id_user = '$id_user', bindo = '$bindo', ipa = '$ipa', mtk = '$mtk', binggris = '$binggris', nem = '$nem', no_ijazah = '$no_ijazah', tgl_ijazah = '$tgl_ijazah', no_skhun = '$no_skhun', tgl_skhun = '$tgl_skhun', pilihan_1 = '$pilihan_1', pilihan_2 = '$pilihan_2' WHERE id_user = '$id_user'";

		$exec = mysqli_query($link, $sql);

		if ($exec) {
			echo "<script>alert('Berhasil di edit!');window.location='detail.$id_user';</script>";
		} else {
			echo "<script>alert('Gagal di edit!');</script>";
		}

	}

?>