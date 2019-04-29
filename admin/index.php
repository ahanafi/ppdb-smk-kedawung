<?php
//session_start();
ob_start();
include_once '../function/main.php';

if (empty($_SESSION['admin']['username']) && empty($_SESSION['admin']['password'])) {
	header('Location: login');
	//echo "<script>alert('Maaf! Anda harus login terlebih dahulu!');window.location='login';</script>";
} else {

	if (@$_SESSION['admin']['username'] == "bendahara") {
		header('Location: ../bendahara');
	} else {

$sql_count_reg = "SELECT COUNT(*) FROM tb_biodata ";
global $link;
$exec = mysqli_query($link, $sql_count_reg);
$d = mysqli_fetch_array($exec);

//meghitung jumlah siswa yang belum diverifikasi
$verf = get_ver_false();
$vf = mysqli_fetch_array($verf);

//meghitung jumlah siswa yang sudah diverifikasi
$vert = get_ver_true();
$vt = mysqli_fetch_array($vert);

//menghitung jumlah pesan
$count_msg = count_msg();
$htng = mysqli_fetch_array($count_msg);

$user = @$_SESSION['admin']['level'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PPDB ONLINE SMKN 1 KEDAWUNG</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$('#my_table').dataTable();
	});
</script>
<body style="background:#ddd !important;">
<nav class="navbar navbar-default navbar-main">
	<div class="container">
		<div class="navbar-header">
			<img src="../img/brand-icon.png" class="img img-responsive" alt="">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?= @$_SESSION['admin']['username']; ?><span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="logout">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>	
</nav>
<div class="container">
	<!--div class="col-md-12"-->
		<div class="col-lg-4">
			<div class="panel panel-info" style="box-shadow: 3px -1px 6px 2px #888;">
				<div class="panel-body">
					<div class="col-md-6" style="float:left;">
						<h2 style="font-size:35px;"><?= $d['COUNT(*)']; ?></h2>
						<p>Pendaftar</p>
					</div>
					<div class="col-md-6" style="float:right;">
						<span class="glyphicon glyphicon-user lrg"></span>
					</div>
				</div>
				<div class="panel-footer center">
					<a href="pendaftar">Selengkapnya <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="panel panel-warning" style="box-shadow: 3px -1px 6px 2px #888;">
				<div class="panel-body">
					<div class="col-md-6" style="float:left;">
						<h2 style="font-size:35px;"><?= $vf['COUNT(*)']; ?></h2>
						<p>Belum di verifikasi</p>
					</div>
					<div class="col-md-6" style="float:right;">
						<span class="glyphicon glyphicon-user lrg"></span>
					</div>
				</div>
				<div class="panel-footer center">
					<a href="belum.verifikasi">Selengkapnya <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="panel panel-primary" style="box-shadow: 3px -1px 6px 2px #888;">
				<div class="panel-body" style="background: #1abc9c !important;">
					<div class="col-md-6" style="float:left;">
						<h2 style="font-size:35px;"><?= $vt['COUNT(*)']; ?></h2>
						<p>Sudah diverifikasi</p>
					</div>
					<div class="col-md-6" style="float:right;">
						<span class="glyphicon glyphicon-user lrg"></span>
					</div>
				</div>
				<div class="panel-footer center" style="background: #16a085;border-color: #16a085;">
					<a href="sudah.verifikasi">Selengkapnya <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				</div>
			</div>
		</div>
	<!--/div-->
</div>
<div class="container">
	<nav class="navbar navbar-main">
		<ul class="nav navbar-nav">
			<li><a href="dashboard"><span class="glyphicon glyphicon-home"></span> Beranda</a></li>
			<li><a href="sudah.verifikasi"><span class="glyphicon glyphicon-list-alt"></span> Daftar Calon Siswa</a></li>
			<li><a href="nilai.test"><span class="glyphicon glyphicon-pencil"></span>  Nilai Test</a></li>
			<li><a href="pesan"><span class="glyphicon glyphicon-comment"></span> Pesan</a></li>
			<li><a href="pengumuman"><span class="glyphicon glyphicon-bullhorn"></span> Pengumuman</a></li>
			<li><a href="pengaturan"><span class="glyphicon glyphicon-cog"></span> Pengaturan </a></li>
			<li><a href="../" target="_blank"><span class="glyphicon glyphicon-send"></span> Lihat Website</a></li>
		</ul>
	</nav>
	<?php if(@$_GET['menu'] == ""){	?>
		<div class="panel panel-primary">
			<div class="panel-body content-adm">
				<h3>Selamat Datang

				<?php
					if($user == 1){
						echo "Administrator!";
					} else {
						echo "Operator!";
					}
				?> </h3>
				<p>
					Apa Kabar Hari ini ?
				</p>
				<br>
				Anda memiliki <a href="pesan">
					<strong><?= $htng['COUNT(*)']; ?></strong> pesan</a>
					<?php include 'inc/jumlah_pil_daftar.php'; ?>
			</div>
		</div>

	<?php
		} else if(@$_GET['menu'] == "sdh_verifikasi"){
			include 'inc/sdh_verifikasi.php';
		} else if(@$_GET['menu'] == "blm_verifikasi"){
			include 'inc/blm_verifikasi.php';
		} else if(@$_GET['menu'] == "calon_siswa"){
			include 'inc/pendaftar.php';
		} else if(@$_GET['menu'] == "pesan"){
			include 'inc/pesan.php';
		} else if(@$_GET['menu'] == "hapus_pesan"){
			include 'inc/hapus_pesan.php';
		} else if(@$_GET['menu'] == "pengumuman"){
			include 'inc/pengumuman.php';
		} else if(@$_GET['menu'] == "hapus_ann"){
			include 'inc/hapus_ann.php';
		} else if(@$_GET['menu'] == "pengaturan"){
			include 'inc/pengaturan.php';
		} else if(@$_GET['menu'] == "pendaftar"){
			include 'inc/pendaftar.php';
		} else if(@$_GET['menu'] == "nilai_test"){
			include 'inc/nilai_test.php';
		} else if(@$_GET['menu'] == "edit_nilai_test"){
			include 'inc/edit_nilai_test.php';
		} else if(@$_GET['menu'] == "detail"){
			include_once 'inc/detail_pend.php';
		} else if(@$_GET['menu'] == "verifikasi"){
			include_once 'inc/verifikasi.php';
		} else if(@$_GET['menu'] == "cetak"){
			include 'inc/cetak.php';

		// AKSI ADMIN UNTUK DATA PENDAFTAR
		} else if(@$_GET['menu'] == "hapus_siswa"){
			include 'inc/hapus_siswa.php';
		} else if(@$_GET['menu'] == "edit_biodata"){
			include 'inc/edit_biodata.php';
		} else if(@$_GET['menu'] == "edit_ortu"){
			include 'inc/edit_ortu_siswa.php';
		} else if(@$_GET['menu'] == "edit_nilai"){
			include 'inc/edit_nilai_siswa.php';
		} else if(@$_GET['menu'] == "hapus_nilai"){
			include 'inc/hapus_nilai.php';
		} else if(@$_GET['menu'] == "tambah_ortu_siswa"){
			include 'inc/tambah_ortu_siswa.php';
		} else if(@$_GET['menu'] == "tambah_nilai_siswa"){
			include 'inc/tambah_nilai_siswa.php';
		} else if(@$_GET['menu'] == "edit_pengumuman"){
			include 'inc/edit_pengumuman.php';
		} else if(@$_GET['menu'] == "ver_detail"){
			include 'inc/ver_detail.php';
		} else if(@$_GET['menu'] == "edit_jalur"){
			include 'inc/edit_jalur.php';
		} else {
			echo "<script>alert('Maaf!, Halaman tidak ditemukan!');window.location='index.php';</script>";
		}
	?>

</div>
<footer>
	PPDB Online <a href="http://smkn1-kedawung.sch.id">SMK Negeri 1 Kedawung</a> &copy; All Right Reserved 2016 BY <a class="btn-link" target="_blank" href="http://www.facebook.com/ahmaddhanavie">Ahmad Hanafi</a>
</footer>
</body>
</html>

<?php } 
} ?>