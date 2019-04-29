<?php
include_once '../function/main.php';
global $link;
$sql = "SELECT `tb_users`.*, `tb_biodata` .* FROM `tb_users` JOIN `tb_biodata` ON `tb_users`.`id` = `tb_biodata`.`id_user` WHERE verifikasi = 1 ORDER BY print = 'Yes' ";
$exc = mysqli_query($link, $sql);
$no = 1;
$ses = @$_SESSION['admin']['level'];
?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Daftar Siswa yang telah diverifikasi</h3>
		<br>
		<table class="table table-bordered table-striped" id="tabel-saya">
			<thead style="background:#2C3E50;color:#fff;">
				<tr>
					<th>No.</th>
					<th>Nomor Peserta</th>
					<th>Nama</th>
					<th>Asal Sekolah</th>
					<th>Jalur Pendaftaran</th>
					<th>Keterangan</th>
					<th>Aksi</th>
				</tr>
			</thead>
			<tbody>
			<?php while ($list = mysqli_fetch_assoc($exc)) { ?>
				<tr>
					<td><?= $no; ?></td>
					<td><?= $list['no_peserta']; ?></td>
					<td><?= $list['name']; ?></td>
					<td><?= $list['asal_smp']; ?></td>
					<td><?= $list['pil_daftar']; ?></td>
					<td>
					<?php
						if($list['print'] == "Yes"){
							echo "Sudah di print";
						} else {
							echo "Belum di print";
						} ?>
					</td>
					<td>
					<?php
						if ($list['print'] == "Yes") {
							echo "";
						} else { ?>
							<a href="cetak.<?= $list['id_user']; ?>" target="_blank" class='btn-opt btn-info'>Cetak</a>
					<?php	}

						?>
					</td>
				</tr>
			<?php $no++; } ?>
			</tbody>
		</table>
	</div>
</div>