<?php
include_once '../function/main.php';

$x = get_pendaftar();
$no = 1;
$ses = @$_SESSION['admin']['level'];
?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h4>Data Pendaftar</h4>
		<br>
		<table id="tabel-saya" class="table table-bordered table-striped">
			<thead>
				<tr class="center">
					<th>No.</th>
					<th>Nama</th>
					<th>Asal SMP</th>
					<th>Jalur Pendaftaran</th>
					<th>Keterangan</th>
					<th>Catatan</th>
					<th class="center">Opsi</th>
				</tr>
			</thead>
			<tbody>
			<?php while ($p = mysqli_fetch_assoc($x)) { ?>
				<tr>
					<td><?= $no; ?></td>
					<td><?= $p['name']; ?></td>
					<td><?= $p['asal_smp']; ?></td>
					<td>
						<?= $p['pil_daftar']; ?> <br>
						<a href="edit.jalur.<?= $p['id_user']; ?>" class="btn-opt btn-warning">Edit</a>
					</td>
					<?php if($p['verifikasi'] == 0){?>
						<td><b style="color:red;">Belum diverifikasi</b></td>
						<td><?= $p['catatan']; ?></td>
						<td class="center">
							<a href="detail.<?= $p['id']; ?>" class="btn-opt btn-primary">Detail</a>
					<?php if($ses == 1){ ?>
							<a onclick="return konfirmasi();" href="hapus.<?= $p['id']; ?>" class="btn-opt btn-danger">Hapus</a>
							<?php } else { echo "";} ?>
						</td>
					<?php } else { ?>
						<td>Sudah diverifikasi</td>
						<td><?= $p['catatan']; ?></td>
						<td class="center">
							<a href="detail.<?= $p['id']; ?>" class="btn-opt btn-primary">Detail</a>
					<?php if($ses == 1){ ?>
							<a onclick="return konfirmasi();" href="hapus.<?= $p['id']; ?>" class="btn-opt btn-danger">Hapus</a>
							<?php } else { echo "";} ?>
						</td>
					<?php } ?>
				</tr>
				<?php $no++; } ?>
			</tbody>
		</table>
	</div>
</div>