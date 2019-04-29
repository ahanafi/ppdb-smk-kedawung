<?php
$id_user = @$_GET['id_user'];

global $link;
$sql = "SELECT `tb_nilai`.*, `tb_biodata` .* FROM `tb_nilai` JOIN `tb_biodata` ON `tb_nilai`.`id_user` = `tb_biodata`.`id_user` WHERE `tb_biodata`.`id_user` = '$id_user'";
$exc = mysqli_query($link, $sql);
$x = mysqli_fetch_assoc($exc);
$nr = mysqli_num_rows($exc);

if ($nr == 0) { ?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h4>Pendaftar belum melengkapi data!</h4>
		<br>
		<a href="pendaftar" class="btn btn-info">Kembali </a>
	</div>
</div>

<?php } else { ?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Detail Calon Siswa</h3>
		<br>
		<table class="table" style="width:80% !important;">
		<?php //while ($bio = mysqli_fetch_assoc($exec_bio)){ ?>
			<tr>
				<td>Nama</td>
				<td>:</td>
				<td><?= $x['name']; ?></td>
			</tr>
			<tr>
				<td>Sekolah Asal</td>
				<td>:</td>
				<td><?= $x['asal_smp']; ?></td>
			</tr>
			<tr>
				<td>NISN</td>
				<td>:</td>
				<td><?= $x['nisn']; ?></td>
			</tr>
			<tr>
				<td>No. Pendaftaran</td>
				<td>:</td>
				<td><?= $x['no_peserta']; ?></td>
			</tr>
			<tr>
				<td>Jenis Kelamin</td>
				<td>:</td>
				<td><?= $x['jk']; ?></td>
			</tr>
			<?php// } ?>
			<tr>
				<td>NEM</td>
				<td>:</td>
				<td><?= $x['nem']; ?></td>
			</tr>
			<tr>
				<td>Prodi</td>
				<td>:</td>
				<td rowspan="2">
					<b>1. <?= $x['pilihan_1']; ?></b> <span class="batas"></span>
					<b>2. <?= $x['pilihan_2']; ?></b>
				</td>
			</tr>
		</table>
		<?php	if ($x['verifikasi'] == 0) {  ?>
	
			<a href="pendaftar" class="btn btn-primary">Kembali</a>
			<a href="verifikasi.<?= $x['id_user']; ?>" class="btn btn-danger">Verifikasi</a>				
	
		<?php	} else { ?>
	
			<a href="pendaftar" class="btn btn-primary">Kembali</a>
			<a href="cetak.<?= $x['id_user']; ?>" class="btn btn-info">Cetak</a>
	
		<?php	} ?>
		
	</div>
</div>

<?php } ?>