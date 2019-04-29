<?php 
//include_once '../function/main.php';

global $link;
$sql = "SELECT * FROM tb_pengumuman";
$exec = mysqli_query($link, $sql);
$ann = mysqli_fetch_array($exec);
?>

<div id="announce">
	<div class="container">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 align="center"> <span class="glyphicon glyphicon-bullhorn"></span>     Pengumuman!</h3>
				</div>
				<div class="panel-body" style="color:#000 !important;">
					<h4><?= $ann['judul']; ?></h4>
					<br>
					<?= $ann['isi']; ?>
					<!--ol class="note">
					<li>1. Klik Daftar pada menu di atas</li>
					<li>2. Isi Form pendaftaran, gunakan username dan password yang mudah diingat</li>
					<li>3. Login ke akun Anda, bisa klik <strong><a href="index.php#daftar">DISINI</a></strong> untuk login</li>
					<li>4. Masukkan username dan password Anda, lalu klik <strong>LOGIN</strong></li>
					<li>5. Lengkapi data-data Anda dengan data yang valid</li>
					<li>6. Lengkapi nila-nilai Anda</li>
					<li>7. Konfirmasi data Anda</li>
					<li>8. Cetak bukti Pendaftaran Anda dan tunggu verifikasi data Anda</li>
					<li>9. Selesai</li>
				</ol-->
				</div>
			</div>
		</div>
	</div>
</div>