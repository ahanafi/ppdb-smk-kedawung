<?php
include_once '../function/main.php';
global $link;

$sql = "SELECT `tb_users`.* , `tb_biodata` .* FROM `tb_users` JOIN `tb_biodata` ON `tb_users`.`id` = `tb_biodata`.`id_user` WHERE `verifikasi` = 0 ORDER BY `tb_users`.`id` ";
$exc = mysqli_query($link, $sql);
$no = 1;
$lev = @$_SESSION['admin']['level'];
?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Daftar Siswa yang belum diverifikasi</h3>
		<br>
		<table class="table table-bordered table-striped" id="tabel-saya">
			<thead style="background:#2C3E50;color:#fff;">
				<tr>
					<th>No.</th>
					<th>Nama</th>
					<th colspan="2">Jalur Pendaftaran</th>
					<th >Asal Sekolah</th>
					<th>Keterangan</th>
					<th>Catatan</th>
					<th class="center">Opsi</th>
				</tr>
			</thead>
			<tbody>
			<?php while ($list = mysqli_fetch_assoc($exc)) { ?>
				<tr>
					<td><?= $no; ?></td>
					<td><?= $list['name']; ?></td>
					<td><?= $list['pil_daftar']; ?> </td>
					<td>
						<a href="edit.jalur.<?= $list['id_user']; ?>" class="btn-opt btn-warning" style="margin-left:15px;">Edit</a>
					</td>
					<td><?= $list['asal_smp']; ?></td>
					<?php
						if($list['verifikasi'] == 0){
							$verifikasi = "Belum di verifikasi";
						} else {
							$verifikasi = "Telah diverifikasi";
						}
					?>
					<td><?= $verifikasi; ?></td>
					<td><?= $list['catatan']; ?></td>
					<td class="center">
						<a href="detail.<?= $list['id_user']; ?>" class="btn-opt btn-primary">Detail</a>
					<?php if($lev == 1){ ?>
							<a onclick="return konfirmasi();" href="hapus.<?= $list['id_user']; ?>" class="btn-opt btn-danger">Hapus</a>
							<?php } else { echo "";} ?>
					</td>
				</tr>
			<?php $no++; } ?>
			</tbody>
		</table>
	</div>
</div>