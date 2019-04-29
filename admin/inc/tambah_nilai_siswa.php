<?php
$id_user = @$_GET['id_user'];

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
					<td><input type="number" name="bindo" class="form-control"></td>
				</tr>
				<tr>
					<td class="col-md-3">Ilmu Pengetahuan Alam</td>
					<td>:</td>
					<td><input type="number" name="ipa" class="form-control"></td>
				</tr>
				<tr>
					<td class="col-md-3">Matematika</td>
					<td>:</td>
					<td><input type="number" name="mtk" class="form-control"></td>
				</tr>
				<tr>
					<td class="col-md-3">B. Inggris</td>
					<td>:</td>
					<td><input type="number" name="binggris" class="form-control"></td>
				</tr>
				<tr>
					<th colspan="3">Nilai Test</th>
				</tr>
				<tr>
					<td>Test Akademik</td>
					<td>:</td>
					<td><input type="number" name="akademik" class="form-control"></td>
				</tr>
				<tr>
					<td>Test Kejuruan</td>
					<td>:</td>
					<td><input type="number" name="kejuruan" class="form-control"></td>
				</tr>
				<tr>
					<td>Psikotes</td>
					<td>:</td>
					<td><input type="number" name="psikotes" class="form-control"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><p style="color:red;padding:5px;">Gunakan tanda (.) titik untuk Koma (,) <b> Contoh: 8.9</b></p></td>
				</tr>
				<tr>
					<th colspan="3">Data Prodi</th>
				</tr>
				<tr>
					<td>Pilihan Ke-1</td>
					<td>:</td>
					<td>
						<select name="pilihan_1" class="form-control">
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
						<select name="pilihan_2" class="form-control">
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
		$jum_nilai	= ($bindo+$ipa+$mtk+$binggris);
		$nem 		= $jum_nilai/10;
		$akademik 	= $_POST['akademik'];
		$kejuruan 	= $_POST['kejuruan'];
		$psikotes 	= $_POST['psikotes'];
		$pilihan_1	= $_POST['pilihan_1'];
		$pilihan_2	= $_POST['pilihan_2'];

		$sql = "INSERT INTO tb_nilai (id, id_user, bindo, ipa, mtk, binggris, nem, akademik, kejuruan, psikotes, pilihan_1, pilihan_2) VALUES
		(null, '$id_user', '$bindo', '$ipa', '$mtk', '$binggris', '$nem', '$akademik', '$kejuruan', '$psikotes', '$pilihan_1', '$pilihan_2')";

		$exec = mysqli_query($link, $sql);

		//die(var_dump($exec));

		if ($exec) {
			echo "<script>alert('Berhasil di edit!');window.location='detail.$id_user';</script>";
		} else {
			echo "<script>alert('Gagal di edit!');</script>";
		}

	}

?>