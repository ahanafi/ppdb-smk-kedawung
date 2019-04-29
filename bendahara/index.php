<?php
//session_start();
ob_start();
include_once '../function/main.php';

if (empty($_SESSION['admin']['username']) && empty($_SESSION['admin']['password'])) {
	header('Location: ../admin/login');
	//echo "<script>alert('Maaf! Anda harus login terlebih dahulu!');window.location='login';</script>";
} else {

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
	<nav class="navbar navbar-main">
		<ul class="nav navbar-nav">
			<li><a href="dashboard"><span class="glyphicon glyphicon-home"></span> Beranda</a></li>
			<li><a href="sudah.verifikasi"><span class="glyphicon glyphicon-list-alt"></span> Daftar Calon Siswa</a></li>
		</ul>
	</nav>
	<?php if(@$_GET['menu'] == ""){	?>
		<div class="panel panel-primary">
			<div class="panel-body content-adm">
				<h3>Selamat Datang Bendahara !</h3>
				<p>
					Apa Kabar Hari ini ?
				</p>
			</div>
		</div>

	<?php
		} else if(@$_GET['menu'] == "logout"){
			include 'logout.php';
		} else if(@$_GET['menu'] == "pendaftar"){
			include 'inc/sdh_verifikasi.php';
		} else if(@$_GET['menu'] == "cetak"){
			include 'inc/cetak.php';
		} else {
			echo "<script>alert('Maaf!, Halaman tidak ditemukan!');window.location='index.php';</script>";
		}
	?>

</div>
<footer>
	PPDB Online <a href="http://smkn1-kedawung.sch.id">SMK Negeri 1 Kedawung</a> @ Ahmad Hanafi &copy; All Right Reserved 2016
</footer>
</body>
</html>

<?php } ?>