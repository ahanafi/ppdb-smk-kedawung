<?php

include_once '../function/main.php';
global $link;
$id_user = @$_GET['id_user'];
$sql = "SELECT `tb_users`.*, `tb_biodata` .* FROM `tb_users` JOIN `tb_biodata` ON `tb_users`.`id` = `tb_biodata`.`id_user` WHERE `tb_users`.`id` = '$id_user' ";
$exc = mysqli_query($link, $sql);
$w = mysqli_fetch_array($exc);

?>
<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Detail Pendaftar yang di Verifikasi</h3>
		<br>
		<table class="table">
			<tr>
				<td>Nama</td>
				<td>:</td>
				<td><?= $w['name']; ?></td>
			</tr>
			<tr>
				<td>No. Peserta</td>
				<td>:</td>
				<td><?= $w['no_peserta']; ?></td>
			</tr>
			<tr>
				<td>Asal SMP</td>
				<td>:</td>
				<td><?= $w['asal_smp']; ?></td>
			</tr>
		</table>
		<br>
		<a href="belum.verifikasi" class="btn btn-primary">Tutup</a>
	</div>
</div>