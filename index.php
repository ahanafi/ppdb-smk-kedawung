<?php

require_once 'function/connect.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PPDB ONLINE SMKN 1 KEDAWUNG</title>
</head>
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="shortcut icon" href="img/fav.png">
<link rel="stylesheet" type="text/css" href="assets/js/amazingslider-1.css">
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script src="assets/js/amazingslider.js"></script>
<script src="assets/js/initslider-1.js"></script>
<body>
<nav class="navbar navbar-default navbar-main navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<img src="img/brand-icon.png" class="img img-responsive" alt="">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="beranda">Beranda</a></li>
			<li><a href="beranda#daftar">Daftar</a></li>
			<li><a href="pengumuman">Pengumuman</a></li>
			<li><a href="terdaftar">Lihat Peserta terverifikasi</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Bantuan <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="s&k">Syarat & Ketentuan</a></li>
					<li><a href="#contact">Kontak Kami</a></li>
				</ul>
			</li>
		</ul>
	</div>	
</nav>
<div id="content" style="padding-top:20px;">
	<!-- Insert to your webpage where you want to display the slider -->
	    <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:1000px;margin:0px auto 6px;">
	        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
	            <ul class="amazingslider-slides" style="display:none;">
	                <li><img src="img/img-1.jpg" alt="SMK Negeri 1 Kedawung" title="Be the first!" />
	                </li>
	                <li><img src="img/img-3.jpg" alt="SMK Negeri 1 Kedawung" title="Be Different!" />
	                </li>
	                <li><img src="img/img-5.png" alt="SMK Negeri 1 Kedawung" title="Do the Best!" />h
	                </li>
	            </ul>
	            <ul class="amazingslider-thumbnails" style="display:none;">
	                <li><img src="img/thumb/img-1-tn.jpg" alt="SMK Negeri 1 Kedawung" title="SMK Negeri 1 Kedawung" /></li>
	                <li><img src="img/thumb/img-3-tn.jpg" alt="SMK Negeri 1 Kedawung" title="SMK Negeri 1 Kedawung" /></li>
	                <li><img src="img/thumb/img-5-tn.png" alt="SMK Negeri 1 Kedawung" title="SMK Negeri 1 Kedawung" /></li>
	            </ul>
	        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Slider jQuery">Slider jQuery</a></div>
	        </div>
	    </div>
	<!-- End of body section HTML codes -->
	<br><br>
	<?php
		if(@$_GET['hal'] == ""){
	?>
	<div class="col-md-12">
		<div class="container">
			<h3>Selamat Datang di PPDB Online SMK Negeri 1 Kedawung</h3>
			<h4>Tahun Ajaran 2016/2017</h4>
			<br>
			<div>
				<img src="img/1.jpg" alt="" class="img img-responsive img-desc" style="margin:0px 20px 20px 0px;">
				<div class="cear"></div>
				<p class="text_kdw">
					<font size="3">
					<p>SMK Negeri 1 Kedawung awalnya bernama SMEA Negeri 1 Cirebon. Berdasarkan pada Surat 	Putusan Mentri Pendidikan, Pengajaran dan Kebudayaan Republik Indonesia tanggal 1 Agustus 	1959 secara resmi<strong> SMEA Negeri 1 Cirebon</strong> didirikan, dengan menempati gedung sementara milik Koperasi Batik Budi Tresna. </p>

	    	     	<p>Pada tanggal 21 Juli 1968, Koperasi Batik Budi Tresna Cirebon menyerahkan (menghibahkan) gedung yang ditempati SMEA Negeri 1 Cirebon kepada Pemerintah dalam hal ini Departemen Pendidikan, Pengajaran dan Kebudayaan, yang selanjutnya menjadi gedung resmi SMEA Negeri 1 Cirebon hingga kini gedung yang diserahkan pada saat itu terdiri dari : </p>
	         	
		         	<ol type="disc">
			            <li>7  R.Kelas</li>
			            <li>1  R. Kepala Sekolah</li>
			            <li>1  R. Tata Usaha</li>
			            <li>1. R. Penjaga Sekolah</li>
			            <li>1  Kamar Kecil (toilet) </li>
		         	</ol>

			         	<p>Pada tahun 1996 keluar Peraturan Mentri Pendidkan yang mengatur tentang perubahan nama lembaga pendidikan di jenjang SLTA, salah satunya adalah SMEA, SMKK dan STM  dan sekolah kejuruan lainnya menjadi SMK. Maka pada tahun 1997, SMEA Negeri 1 Cirebon berubah menjadi <strong>SMK Negeri 3 Kota Cirebon</strong>, namun karena terjadi kesalah domisili sekolah yang tercatat di Kota Cirebon sedangkan wilayahnya menjadi miliki Kabupaten Cirebon, oleh karenanya beberapa bulan kemudian berubah namanya menjadi <strong>SMK Negeri 1 Cirebon Barat</strong>
			         	</p>
			        	
			        	<p>
			        	Setelah adanya perubahan system pemerintah dari sentralisasi menjadi desentralisasi (Otonomi Daerah) pada tahun 2000 dan terjadi pemekaran kecamatan Cirebon Barat, maka berdasarkan Surat Keputusan Bupati Cirebon No. 420/Kep.330 Disdik/2005 tertanggal 4 Juli 2005, SMK Negeri 1 Cirebon Barat dirubah menjadi
			        	<strong>SMK Negeri 1 Kedawung</strong> hingga sekarang.</p>
						<strong> <p>SMK Negeri 1 Kedawung Memiliki 6 mata program keahlian, yaitu :</p>
				
							<p>1. Administrasi Perkantoran</p>
							<p>2. Akuntansi</p>
							<p>3. Multimedia</p>
							<p>4. Pemasaran</p>
							<p>5. Perbankan</p>
							<p>6. Usaha Perjalanan Wisata</p></strong>
					</font>
				</p>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div id="daftar" style="margin-bottom:0px !important;">
		<div class="container">
			<div class="col-md-6">
				<form action="proses_daftar.php" class="form-group" method="post">
				<h3 align="center">Daftar Sekarang!</h3>
				<br>
				<label for="name">Nama Lengkap</label>
				<input type="text" name="name" class="form-control" placeholder="Nama Lengkap Anda" autocomplete="off" required>
				<br>
				<label for="nisn">NISN</label>
				<input type="number" class="form-control" name="nisn" placeholder="Nomor Induk Siswa Nasional">
				<br>
				<label for="pil_daftar">Jalur Pendaftaran</label>
				<select name="pil_daftar" class="form-control" required disabled>
						<option value="">-- Pilih Jalur Pendaftaran --</option>
						<option value="Akademis" selected>Akademis</option>
						<option value="Afirmasi">Afirmasi</option>
						<option value="Prestasi">Prestasi</option>
						<option value="PGRI">PGRI</option>
				</select>
				<br>
				<input type="submit" name="daftar" value="Daftar!" class="btn btn-primary">
				</form>
			</div>
			<div class="col-md-6" id="login" style="padding-top:50px;">
				<div class="panel panel-default">
					<div class="panel-heading"><h4>Petunjuk</h4></div>
					<div class="panel-body" style="color:#000 !important;border:1px solid #ddd;">
						<ol class="note">
							<li>1. Silahkan isi semua form disamping. <br></li>
							<li>2. Gunakan Nama lengkap Asli. <br></li>
							<li>3. Contoh penulisan nama :<strong> Ahmad Habibie, Siti Halimah.</strong> <br></li>
							<li>4. Pilih jalur pendaftaran. <br></li>
							<li>5. Klik daftar, dan lengkapi semua data-data Anda. <br></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php
		} else if(@$_GET['hal'] == "registered"){
			include 'inc/list_registered.php';
		} else if(@$_GET['hal'] == "announce"){
			include 'inc/announce.php';
		} else if(@$_GET['hal'] == "snk"){
			include 'inc/snk.php';
		} else { ?>
			<script>alert('Maaf! Halaman tidak ditemukan!');window.location='?hal=#';</script>
	<?php } ?>
	<div class="clear"></div>
</div>
<div id="contact" style="margin-top:0px !important;">
	<div class="container">
		<h3 align="center">Kontak Kami</h3>
		<br>
		<div class="col-lg-6">
			<form action="" class="form-group" method="post">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					<input type="text" name="nama" class="form-control" placeholder="Nama Anda" required>
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
					<input type="email" name="email" class="form-control" placeholder="E-mail Anda" required>
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
					<input type="text" name="no_hp" class="form-control" placeholder="No Hp Anda" required>
				</div>
				<br>
				<textarea name="pesan" class="form-control" cols="30" rows="5" placeholder="Ketikkan teks Anda disini" required autocomplete="off"></textarea>
				<br>
				<input type="submit" name="kirim" class="form-control btn-primary" value="Kirim">
			</form>
		</div>
		<div class="col-lg-6">
			<iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15849.93591208204!2d108.5443748!3d-6.7106354!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xebe8d16458e1e8d9!2sSMK+Negeri+1+Kedawung+Kab.+Cirebon!5e0!3m2!1sen!2s!4v1465519152766" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
	</div>
</div>
<footer>
	PSB Online <a href="http://smkn1-kedawung.sch.id">SMK Negeri 1 Kedawung</a> @ Ahmad Hanafi &copy; All Right Reserved 2016
</footer>
</body>
</html>

<?php

if (isset($_POST['kirim'])) {
	$nama 	= $_POST['nama'];
	$email 	= $_POST['email'];
	$no_hp 	= $_POST['no_hp'];
	$pesan 	= $_POST['pesan'];

	$sql = "INSERT INTO `tb_pesan` (`id`, `nama`, `email`, `no_hp`, `pesan`) VALUES (null, '$nama', '$email', '$no_hp', '$pesan')";
	global $link;
	$exec = mysqli_query($link, $sql);

	//die(var_dump($exec));
	if ($exec) {
		echo "<script>alert('Pesan berhasil terkirim!');window.location='beranda';</script>";
	} else {
		echo "<script>alert('Pesan gagal dikirim!');window.location='beranda';</script>";
	}

}

?>