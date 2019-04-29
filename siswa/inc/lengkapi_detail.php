<?php
include_once '../function/main.php';

$name = @$_SESSION['student']['name'];
$nisn = @$_SESSION['student']['nisn'];
$id_user = @$_SESSION['student']['id_user'];

$sql_smp = "SELECT * FROM tb_smp ";
$exe_smp = mysqli_query($link, $sql_smp);

//mengambil data dari table bio
$fetch_bio = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exf_bio = mysqli_query($link, $fetch_bio);
$bio = mysqli_num_rows($exf_bio);

//mengambil data dari table orang tau
$fetch_ot = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user'";
$exf_ot = mysqli_query($link, $fetch_ot);
$ot = mysqli_num_rows($exf_ot);

//mengambil data dari table nilai
$fetch_nil = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
$exf_nil = mysqli_query($link, $fetch_nil);
$nil = mysqli_num_rows($exf_nil);

if ($bio == 1 && $ot == 1 && $nil == 1) {
	//header('location: konfirmasi');
	echo "<script>alert('Maaf Halaman tidak bisa diakses! Anda telah mengiput data!');window.location='konfirmasi';</script>";
} else {

?>
<script>
	$(document).ready(function(){
		$('#tanggal_skhun').datepick({
			dateFormat: 'yyyy-mm-dd',
			yearRange: 'c-20:c+10'
		});
	});
</script>
<div class="verif">
	<div class="col-md-6 konf_bio">
		<span class="judul"><h3>Lengkapi Biodata</h3></span>
		<br><p></p><br>
		<form action="" class="form-group" method="post">
		<table class="table table-form">
			<tr>
				<td class="col-md-3">Nama Lengkap</td>
				<td>:</td>
				<td><input type="text" name="name" class="form-control" placeholder="Nama Lengkap" value="<?= $name; ?>"></td>
			</tr>
			<tr>
				<td class="col-md-3">NISN</td>
				<td>:</td>
				<td><input type="text" name="nisn" class="form-control" placeholder="NISN" value="<?= $nisn; ?>" required></td>
			</tr>
			<tr>
				<td class="col-md-3">Tempat Lahir</td>
				<td>:</td>
				<td><input type="text" name="tmp_lahir" class="form-control" placeholder="Tempat Lahir"  required value="Cirebon"></td>
			</tr>
			<tr>
				<td class="col-md-3">Tanggal Lahir</td>
				<td>:</td>
				<td><input type="text" name="tgl_lahir" id="tgl_skhun" class="form-control" placeholder="YYYY-MM-dd"  required></td>
			</tr>
			<tr>
				<td class="col-md-3">Jenis Kelamin</td>
				<td>:</td>
				<td>
					<select name="jk" class="form-control">
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
				<td><input type="number" name="no_hp" class="form-control" placeholder="Nomor Handphone" required></td>
			</tr>
			<tr>
				<td class="col-md-3">Asal SMP</td>
				<td>:</td>
				<td>
					<select name="asal_smp1" class="form-control">
						<option value="">-- Pilih Asal SMP --</option>
						<?php while ($smp = mysqli_fetch_array($exe_smp)) { ?>
						<option value="<?= $smp['nama_smp']; ?>"><?= $smp['nama_smp']; ?></option>
						<?php } ?>
						<option value="">Tulis dikolom bawah</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>
					<div class="catatan">Jika nama SMP tidak ada, silahkan tulis di bawah! Jika sudah ada kolom di bawah tidak perlu diisi</div>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><input type="text" name="asal_smp2" placeholder="Tulis Asal SMP, contoh : SMPN 1 Bandung" class="form-control"></td>
			</tr>
			<tr>
				<td class="col-md-3">Alamat</td>
				<td>:</td>
				<td>
					<textarea name="alamat" cols="5" class="form-control"  placeholder="Alamat Tempat Tinggal" required></textarea>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><input type="hidden" name="verifikasi"  value="0"></td>
			</tr>
		</table>			
	</div>

	<div class="col-md-6 konf_ortu">
		<span class="judul"><h3>Lengkapi Data Orang Tua</h3></span>
		<br><p></p><br>
		<table class="table table-form">
			<tr>
				<td>Nama Ayah</td>
				<td>:</td>
				<td><input type="text" name="nama_ayah" class="form-control" placeholder="Nama Ayah"></td>
			</tr>
			<tr>
				<td>Pekerjaan Ayah</td>
				<td>:</td>
				<td><input type="text" name="pkrjn_ayah" class="form-control" placeholder="Pekerjaan Ayah"></td>
			</tr>
			<tr>
				<td>Nama Ibu</td>
				<td>:</td>
				<td><input type="text" name="nama_ibu" class="form-control" placeholder="Nama Ibu"></td>
			</tr>
			<tr>
				<td>Pekerjaan Ibu</td>
				<td>:</td>
				<td><input type="text" name="pkrjn_ibu" class="form-control" placeholder="Pekerjaan Ibu"></td>
			</tr>
			<tr>
				<td>No. HP Ayah/Ibu</td>
				<td>:</td>
				<td><input type="number" name="no_hp_ortu" class="form-control" placeholder="No. HP Ayah/Ibu"></td>
			</tr>
			<tr>
				<td>Alamat Ayah/Ibu</td>
				<td>:</td>
				<td>
					<textarea name="alamat_ortu" cols="5" class="form-control" placeholder="Alamat Tempat tinggal Orang tua"></textarea>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>
					<div class="catatan">Jika orang tua masih ada, kolom WALI dikosongkan saja!</div>
				</td>
			</tr>
			<tr>
				<td>Nama Wali</td>
				<td>:</td>
				<td><input type="text" name="nama_wali" class="form-control" placeholder="Nama Wali"></td>
			</tr>
			<tr>
				<td>Pekerjaan Wali</td>
				<td>:</td>
				<td><input type="text" name="pkrjn_wali" class="form-control" placeholder="Pekerjaan Wali"></td>
			</tr>
			<tr>
				<td>No. HP Wali</td>
				<td>:</td>
				<td><input type="number" name="no_hp_wali" class="form-control" placeholder="No. HP Wali"></td>
			</tr>
			<tr>
				<td>Alamat Wali</td>
				<td>:</td>
				<td>
					<textarea name="alamat_wali" cols="5" class="form-control" placeholder="Alamat Tempat tinggal Wali"></textarea>
				</td>
			</tr>
		</table>
	</div>

	<div class="col-md-12 konf_nilai">
		<span class="judul"><h3>Lengkapi Nilai dan Prodi (Kejuruan)</h3></span>
		<br><br><p></p>
		<table class="table table-form">
			<tr>
				<th colspan="5"><h4>1. Data Nilai</h4></th>
			</tr>
			<tr class="center">
				<th>Mata Pelajaran</th>
				<td>B. Indonesia</td>
				<td>Ilmu Pengetahuan Alam</td>
				<td>Matematika</td>
				<td>B. Inggris</td>
			</tr>
			<tr class="nilai">
				<th style="text-align:left !important;">Nilai</th>
				<td><input type="text" name="bindo" class="form-control"></td>
				<td><input type="text" name="ipa" class="form-control"></td>
				<td><input type="text" name="mtk" class="form-control"></td>
				<td><input type="text" name="binggris" class="form-control"></td>
			</tr>
			<tr>
				<th>&nbsp;</th>
				<td colspan="4">
					<div class="catatan">
						Pada nilai , gunakan titik (.) untuk pengganti koma (,) <b>Contoh 62.5</b> <br><br>
						Jika belum mendapatkan Ijazah dan SKHUN, silahkan KOSONGKAN pada bagian Nomor dan Tanggal Ijazah dan SKHUN
					</div>
				</td>
			</tr>
			<tr>
				<th colspan="5"><h4>2. Data Kelulusan</h4></th>
			</tr>
			<tr>
				<th>Nomor Ijazah</th>
				<td colspan="4">
					<input type="text" name="no_ijazah" class="form-control" placeholder="Nomor Ijazah">
				</td>
			</tr>
			<tr>
				<th>Tanggal Ijazah</th>
				<td colspan="4">
					<input type="text" name="tgl_ijazah" id="tgl_ijazah" class="form-control" placeholder="YYYY-MM-DD">
				</td>
			</tr>
			<tr>
				<th>Nomor SKHUN</th>
				<td colspan="4">
					<input type="text" name="no_skhun" class="form-control" placeholder="Nomor SKHUN">
				</td>
			</tr>
			<tr>
				<th>Tanggal SKHUN</th>
				<td colspan="4">
					<input type="text" name="tgl_skhun" id="tanggal_skhun" class="form-control" placeholder="YYYY-MM-DD">
				</td>
			</tr>	
			<tr>
				<th colspan="5"><h4>3. Data Pilihan Kejuruan</h4></th>
			</tr>
			<tr>
				<th>Pilihan Ke-1</th>
				<td colspan="4">
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
				<th>Pilihan Ke-2</th>
				<td colspan="4">
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
				<td colspan="4">
					<input type="submit" name="simpan" class="btn btn-primary" value="Simpan!">
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>

<?php

if (isset($_POST['simpan'])) {
	// Input data biodata
	$id_user	= $_SESSION['student']['id_user'];
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
	$konfirmasi = 0;
	$print 		= "No";

	//Input data orang tua
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

	//Input data untuk nilai dan pilihan prodi
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

	/*$sql = "INSERT INTO `tbl_detail_user` 
		(`id`, `id_user`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`, `asal_smp`,
		`no_peserta`, `verifikasi`, `konfirmasi`, `print`, `nama_ayah`, `pkrjn_ayah`, `nama_ibu`, `pkrjn_ibu`,
		`no_hp_ortu`, `alamat_ortu`, `nama_wali`, `pkrjn_wali`, `no_hp_wali`,
		`alamat_wali`, `bindo`, `ipa`, `mtk`, `binggris`, `nem`, `no_ijazah`,
		`tgl_ijazah`, `no_skhun`, `tgl_skhun`, `pilihan_1`, `pilihan_2`)
	VALUES
		(null, '$id_user', '$tmp_lahir', '$tgl_lahir', '$jk', '$agama', '$no_hp', '$alamat', '$asal_smp', null, '$verifikasi', '$konfirmasi', '$print', '$nama_ayah', '$pkrjn_ayah', '$nama_ibu', '$pkrjn_ibu', '$no_hp_ortu', '$alamat_ortu', '$nama_wali', '$pkrjn_wali', '$no_hp_wali', '$alamat_wali', '$bindo', '$ipa', '$mtk', '$binggris', '$nem', '$no_ijazah', '$tgl_ijazah', '$no_skhun', '$tgl_skhun', 'pilihan_1', 'pilihan_2' ) ";

	$exc = mysqli_query($link, $sql);*/


	//Insert data ke table biodata
	$sql_bio = "INSERT INTO `tb_biodata` (`id`, `id_user`, `name`, `nisn`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`, `asal_smp`, `no_peserta`, `verifikasi`) VALUES (null, '$id_user', '$name', '$nisn', '$tmp_lahir', '$tgl_lahir', '$jk', '$agama', '$no_hp', '$alamat', '$asal_smp', null, '$verifikasi')";
	$exc_bio = mysqli_query($link, $sql_bio);

	//Insert Data ke table orang tua
	$sql_ortu = "INSERT INTO tb_orangtua (id, id_user, nama_ayah, pkrjn_ayah, nama_ibu, pkrjn_ibu, no_hp_ortu, alamat_ortu, nama_wali, pkrjn_wali, no_hp_wali,  alamat_wali) VALUES (null, '$id_user', '$nama_ayah', '$pkrjn_ayah', '$nama_ibu', '$pkrjn_ibu', '$no_hp_ortu', '$alamat_ortu', '$nama_wali', '$pkrjn_wali', '$no_hp_wali',  '$alamat_wali')";
	$exc_ortu = mysqli_query($link, $sql_ortu);

	//Insert Data ke table Nilai
	$sql_nil = "INSERT INTO tb_nilai (id, id_user, bindo, ipa, mtk, binggris, nem, no_ijazah, tgl_ijazah, no_skhun, tgl_skhun
		, kejuruan, psikotes, pilihan_1, pilihan_2) VALUES
		(null, '$id_user', '$bindo', '$ipa', '$mtk', '$binggris', '$nem', '$no_ijazah', '$tgl_ijazah', '$no_skhun', '$tgl_skhun', 0, 0, '$pilihan_1', '$pilihan_2')";

	$exc_nil = mysqli_query($link, $sql_nil);

/*	var_dump($exc_bio);
	var_dump($exc_ortu);
	var_dump($exc_nil);
	die();*/

	if ($exc_bio && $exc_ortu && $exc_nil) {
		echo "<script>alert('Data berhasil disimpan');window.location='konfirmasi';</script>";
	} else {
		echo "<script>alert('Data Gagal disimpan');window.location='biodata';</script>";
	}
}

}


?>