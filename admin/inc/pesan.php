<?php
include_once '../function/main.php';

global $link;
$sql = "SELECT * FROM tb_pesan ";
$exec = mysqli_query($link, $sql);
$ses = @$_SESSION['admin']['username'];
?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<div class="box-pesan">
			<h3>Daftar Pesan Diterima</h3>
			<?php while ($msg = mysqli_fetch_assoc($exec)) { ?>
			<div class="col-lg-12 per-pesan">
				<table class="table" style="width:50%;">
					<tr>
						<th>Nama</th>
						<th>:</th>
						<td><?= $msg['nama']; ?></td>
					</tr>
					<tr>
						<th>E-mail</th>
						<th>:</th>
						<td><?= $msg['email']; ?></td>
					</tr>
					<tr>
						<th>No. HP</th>
						<th>:</th>
						<td><?= $msg['no_hp']; ?></td>
					</tr>
					<tr>
						<th>Pesan</th>
						<th>:</th>
						<td><?= $msg['pesan']; ?></td>
					</tr>
				</table>
				<a href="<?= $msg['id']; ?>" class="btn btn-primary" style="margin-left:90px;">Balas</a>
				<?php if($ses == "admin"){ ?>
				<a onclick="return konfirmasi();" href="hapus.pesan.<?= $msg['id']; ?>" class="btn btn-danger">Hapus</a>
				<?php } else { echo "";} ?>
			</div>
			<?php } ?>
		</div>
	</div>
</div>