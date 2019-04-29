<?php

$sql_ann = "SELECT * FROM tb_pengumuman ";
$exec_ann = mysqli_query($link, $sql_ann);
$ses = $_SESSION['admin']['level'];

?>
<script type="text/javascript">
	tinyMCE.init({
		selector : '#form-alamat'
	});
</script>
<div class="panel panel-default">
	<div class="panel-body content-adm">
		<div class="col-sm-6">
			<h3>Pengumuman</h3>
		</div>
		<div class="col-sm-6">
			<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#newannounce" style="float:right;">Tambah Pengumuman</a>		
		</div>
		<?php while ($ann = mysqli_fetch_assoc($exec_ann)) { ?>
		<div class="col-lg-12 per-pesan">
			<table class="table">
				<tr>
					<th>Judul</th>
					<th>:</th>
					<th><?= $ann['judul']; ?></th>
				</tr>
				<tr>
					<th>Isi</th>
					<th>:</th>
					<th><?= $ann['isi']; ?></th>
					<!--th>
						1. Klik Daftar pada menu di atas <br>
						2. Isi Form pendaftaran, gunakan username dan password yang mudah diingat <br>
						3. Login ke akun Anda, bisa klik DISINI untuk login <br>
						4. Masukkan username dan password Anda, lalu klik LOGIN <br>
						5. Lengkapi data-data Anda dengan data yang valid <br>
						6. Lengkapi nila-nila Anda <br>
						7. Konfirmasi data Anda <br>
						8. Cetak bukti Pendaftaran Anda dan tunggu verifikasi data Anda <br>
						9. Selesai
					</th-->
				</tr>
			</table>
			<a href="edit.ann.<?= $ann['id']; ?>" class="btn btn-warning" style="margin-left:130px;">Edit</a>
			<span class="batas"></span>
			<?php if($ses == 1){ ?>
			<a onclick="return konfirmasi();" href="hapus_ann.<?= $ann['id']; ?>" class="btn btn-danger" >Hapus</a>
			<?php } else {echo "";} ?>
		</div>
		<?php } ?>
	</div>
</div>

<div class="modal fade" id="newannounce" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Tambahkan Pengumuman Baru</h4>
			</div>
			<div class="modal-body">
				<form action="" method="post" class="form-group">
					<input type="text" name="judul" class="form-control" placeholder="Judul Pengumuman" autocomplete="off" required>
					<br>
					<textarea name="isi" id="form-alamat"></textarea>
			</div>
			<div class="modal-footer">
				<input type="submit" name="submit" value="Terbitkan!" class="btn btn-primary">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
include_once '../function/main.php';

if (isset($_POST['submit'])) {
	$judul 	= $_POST['judul'];
	$isi 	= $_POST['isi'];

	global $link;
	$sql = "INSERT INTO tb_pengumuman (id, judul, isi) VALUES (null, '$judul', '$isi')";
	$exec = mysqli_query($link, $sql);

	if ($exec) {
		echo "<script>alert('Pengumuman berhasil di terbitkan!');window.location='?menu=pengumuman';</script>";
	} else {
		echo "<script>alert('Pengumuman gagal di terbitkan!');</script>";
	}
}

?>