<?php

include_once '../function/main.php';
$id_user = @$_SESSION['student']['id_user'];

$sql_biodata = "SELECT tb_users .name, tb_biodata .* FROM tb_users JOIN tb_biodata ON tb_users .id = tb_biodata  .id_user WHERE tb_users .id = '$id_user'";
//"SELECT tb_users .name, tb_biodata,* FROM tb_users INNER JOIN tb_biodata ON tb_users .id_user = tb_biodata .id_user";
$exec_bio = mysqli_query($link, $sql_biodata);
//die(var_dump($sql_biodata));
while ($x = mysqli_fetch_assoc($exec_bio)) {
	echo $x['name']." ".$x['nisn'];
}

$sql_ortu = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exec_ortu = mysqli_query($link, $sql_ortu);

$sql_nilai = "SELECT * FROM tb_biodata WHERE id_user = '$id_user'";
$exec_nilai = mysqli_query($link, $sql_nilai);
?>


<!--div class="verif">
	<div class="col-md-6 ver_bio">
		<span class="judul">Verifikasi Biodata</span>
		<br><p></p><br>
		<table class="table">
		<?php //while ($x = mysqli_fetch_assoc($sql_biodata)) { ?>
			<tr>
				<th>Nama</th>
				<td>:</td>
				<td>Ahmad Hanafi</td>
			</tr>
			<tr>
				<th>NISN</th>
				<td>:</td>
				<td>12819899</td>
			</tr>
			<tr>
				<th>Tempat Lahir</th>
				<td>:</td>
				<td>Cirebon</td>
			</tr>
			<tr>
				<th>Tanggal Lahir</th>
				<td>:</td>
				<td>08/07/1998</td>
			</tr>
			<tr>
				<th>Jenis Kelamin</th>
				<td>:</td>
				<td>Laki-Laki</td>
			</tr>
			<tr>
				<th>NIK</th>
				<td>:</td>
				<td>20190910930903</td>
			</tr>
			<tr>
				<th>Agama</th>
				<td>:</td>
				<td>Islam</td>
			</tr>
			<tr>
				<th>Alamat</th>
				<td>:</td>
				<td>Desa Sampiran</td>
			</tr>
			<tr>
				<th>Nama Ibu</th>
				<td>:</td>
				<td>Jamilah</td>
			</tr>
			<tr>
				<th>Asal Sekolah</th>
				<td>:</td>
				<td>SMP Negeri 1 Beber</td>
			</tr>
			<?php //} ?>
		</table>
		
		<a href="#" class="btn btn-warning">Edit Data</a>
	</div>
	<div class="col-md-6 ver_prod">
		<span class="judul">Verifikasi Pilihan Prodi</span>
		<br><p></p><br>
		<table class="table">
			<tr>
				<th>Pilihan ke-1</th>
				<td>:</td>
				<td>Akuntansi</td>
			</tr>
			<tr>
				<th>Pilihan ke-2</th>
				<td>:</td>
				<td>Adminstrasi Perkantoran</td>
			</tr>
			<tr>
				<th>Pilihan ke-3</th>
				<td>:</td>
				<td>Multimedia</td>
			</tr>
			<tr>
				<th>Pilihan ke-4</th>
				<td>:</td>
				<td>Pemasaran</td>
			</tr>
			<tr>
				<th>Pilihan ke-5</th>
				<td>:</td>
				<td>Perbankan</td>
			</tr>
			<tr>
				<th>Pilihan ke-6</th>
				<td>:</td>
				<td>Rekayasa Perangkat Lunak</td>
			</tr>
			<tr>
				<th>Pilihan ke-7</th>
				<td>:</td>
				<td>Teknik Komputer & Jaringan</td>
			</tr>
		</table>
		<a href="#" class="btn btn-warning">Edit Prodi</a>
	</div>
	<div class="col-md-10 ver_nilai">
		<span class="judul">Verifikasi Nilai</span>
		<br><br><p></p>
		<table class="table">
			<tr>
				<th>Mata Pelajaran</th>
				<th>Nilai Semester 1</th>
				<th>Nilai Semester 2</th>
				<th>Nilai Semester 3</th>
				<th>Nilai Semester 4</th>
				<th>Nilai Semester 5</th>
			</tr>
			<tr>
				<th>IPA</th>
				<td>75</td>
				<td>77</td>
				<td>83</td>
				<td>88</td>
				<td>95</td>
			</tr>
			<tr>
				<th>Matematika</th>
				<td>75</td>
				<td>77</td>
				<td>83</td>
				<td>88</td>
				<td>95</td>
			</tr>
			<tr>
				<th>B. Indonesia</th>
				<td>75</td>
				<td>77</td>
				<td>83</td>
				<td>88</td>
				<td>95</td>
			</tr>
		</table>
		<a href="#" class="btn btn-warning">Edit Data</a> <i class="batas"></i>
		<a href="#" class="btn btn-info" style="float:right;">Verifikasi</a>
	</div>
</div-->