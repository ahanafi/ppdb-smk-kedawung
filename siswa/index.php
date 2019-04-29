<?php
//session_start();
ob_start();
include_once '../function/main.php';

if (!@$_SESSION['student']['name'] && !@$_SESSION['student']['pil_daftar']) { ?>
	<script>alert('Anda harus Daftar terlebih dahulu!');window.location='../beranda#daftar';</script>
<?php
} else {
	$id_user = @$_SESSION['student']['id_user'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PPDB ONLINE SMKN 1 KEDAWUNG</title>
</head>
<body>
<nav class="navbar navbar-default navbar-main">
	<div class="container">
		<div class="navbar-header">
			<img src="../img/brand-icon.png" class="img img-responsive" alt="">
		</div>
		<!--ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"--><?php //$_SESSION['student']['name']; ?>    <!--span class="glyphicon glyphicon-chevron-down"></span></a>
				<ul class="dropdown-menu">
					<li class="drop-list"><a href="logout">Logout</a></li>
				</ul>
			</li>
		</ul-->
	</div>	
</nav>
<div class="container">
	<div class="title">
		<h4>Aplikasi Penerimaan Siswa Baru</h4>
		<br>
	</div>
	<div class="col-lg-12">
		<div class="col-md-2">
			<a href="biodata" id="bio" class="btn btn-lg btn-info btn-menu"><span class="glyphicon glyphicon-user lg"> </span> <p>1. Lengkapi Data</p></a>
		</div>
		<i class="batas"></i>
		<!--div class="col-md-2">
			<a href="data.orang.tua" class="btn btn-lg btn-primary btn-menu"><span class="glyphicon glyphicon-user lg"> </span> <p>2. Data Wali</p></a>
		</div-->
		<div class="col-md-2" style="margin-left:30px;">
			<a href="konfirmasi" class="btn btn-lg btn-warning btn-menu"><span class="glyphicon glyphicon-check lg"> </span> <p>2. Cek Data</p></a>
		</div>
		<div class="col-md-2">
			<a href="konfirmasi.data.<?= $id_user; ?>" class="btn btn-lg btn-danger btn-menu"><span class="glyphicon glyphicon-saved lg"> </span> <p>3. Konfirmasi</p></a>
		</div>
		<!--div class="col-md-2">
			<a href="print" target="_blank" class="btn btn-lg btn-print btn-menu"><span class="glyphicon glyphicon-print lg"> </span> <p>5. Print Data</p></a>
		</div-->
	</div>
	<?php
		if(@$_GET['menu'] == ""){ ?>
			<div class="formular" style="min-height:280px !important;">
				<img src="../img/ppdbimg.gif" style="background:#fff;" class="img img-responsive" />
				<h3>Selamat datang <?= $_SESSION['student']['name']; ?>, di PSB Online <strong>SMK Negeri 1 Kedawung</strong></h3>
				<p>
					Silahkan lengkapi data-data Anda!
				</p>
			</div>
	<?php
		} else if(@$_GET['menu'] == "biodata"){
			include 'inc/lengkapi_detail.php';
		} else if(@$_GET['menu'] == "data_orang_tua"){
			include 'inc/data_orangtua.php';
		} else if(@$_GET['menu'] == "nilai"){
			include 'inc/nilai_siswa.php';
		} else if(@$_GET['menu'] == "konfirmasi"){
			include 'inc/konfirmasi.php';
		} else if(@$_GET['menu'] == "print"){
			include 'inc/print.php';
		} else if(@$_GET['menu'] == "logout"){
			include 'inc/logout.php';
		} else if(@$_GET['menu'] == "edit_bio"){
			include 'inc/edit_bio.php';
		} else if(@$_GET['menu'] == "edit_ortu"){
			include 'inc/edit_ortu.php';
		} else if(@$_GET['menu'] == "edit_nilai"){
			include 'inc/edit_nilai.php';
		} else if(@$_GET['menu'] == "proses_konf"){
			include 'inc/proses_konf.php';
		} else { ?>
			<script type="text/javascript">alert('Halaman tidak ditemukan');window.location='index.php';</script>
	<?php
		}

	?>

</div>
<footer style="margin-top:50px;">
	PPDB Online SMK Negeri 1 Kedawung @ Ahmad Hanafi &copy; All Right Reserved 2016
</footer>
</body>
</html>

<?php } ?>