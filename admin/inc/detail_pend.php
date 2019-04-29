<?php
	include_once '../function/main.php';
	$id_user = @$_GET['id_user'];

	$sql_biodata = "SELECT tb_users .*, tb_biodata .* FROM tb_users JOIN tb_biodata ON tb_users .id = tb_biodata  .id_user WHERE tb_users .id = '$id_user'";
	$exec_bio = mysqli_query($link, $sql_biodata);
	//die(var_dump($sql_biodata));
	$sql_ortu = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user'";
	$exec_ortu = mysqli_query($link, $sql_ortu);

	$sql_nilai = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
	$exec_nilai = mysqli_query($link, $sql_nilai);

	$nr_ot = mysqli_num_rows($exec_ortu);
	$nr_nil = mysqli_num_rows($exec_nilai);
?>

<div class="panel panel-default">
	<div class="panel-body content-adm">
		<a href="belum.verifikasi" class="btn btn-primary" style="float:right;">Kembali</a>
		<h3>Detail Pendaftar</h3>
		<br>
		<div class="col-md-6">
			<span style="font-weight:bold;font-size:17px;">BIODATA PENDAFTAR</span>
			<br><p></p>
			<table class="table">
				<?php $x = mysqli_fetch_assoc($exec_bio); ?>
				<tr>
					<th>Nama</th>
					<td>:</td>
					<td><?= $x['name']; ?></td>
				</tr>
				<tr>
					<th>Jalur Pendaftaran</th>
					<td>:</td>
					<td>
						<?= $x['pil_daftar']; ?>
						<a href="edit.jalur.<?= $x['id_user']; ?>" class="btn-opt btn-warning" style="margin-left:15px;">Edit</a>
					</td>
				</tr>
				<tr>
					<th>NISN</th>
					<td>:</td>
					<td><?= $x['nisn'] ?></td>
				</tr>
				<tr>
					<th>Tempat Lahir</th>
					<td>:</td>
					<td><?= $x['tmp_lahir'] ?></td>
				</tr>
				<tr>
					<th>Tanggal Lahir</th>
					<td>:</td>
					<td><?= $x['tgl_lahir'] ?></td>
				</tr>
				<tr>
					<th>Jenis Kelamin</th>
					<td>:</td>
					<td><?= $x['jk'] ?></td>
				</tr>
				<tr>
					<th>Agama</th>
					<td>:</td>
					<td><?= $x['agama'] ?></td>
				</tr>
				<tr>
					<th>No. HP</th>
					<td>:</td>
					<td><?= $x['no_hp'] ?></td>
				</tr>
				<tr>
					<th>Asal SMP</th>
					<td>:</td>
					<td><?= $x['asal_smp'] ?></td>
				</tr>
				<tr>
					<th>Alamat</th>
					<td>:</td>
					<td><?= $x['alamat'] ?></td>
				</tr>
				<tr>
					<th>Keterangan</th>
					<td>:</td>
					<?php

					if ($x['verifikasi'] == 0) {
						$verifikasi = "<b style='background:red;padding:5px;color:white;'>Belum di verifikasi</b>";
					} else {
						$verifikasi = "<b style='background:white;padding:5px;'>Telah verifikasi</b>";
					}
					?>
					<td><?= $verifikasi; ?></td>
				</tr>
				<tr>
					<th>Catatan</th>
					<td>:</td>
					<td><?= $x['catatan']; ?></td>
				</tr>
			</table>		
			<a href="edit.bio.siswa.<?= $x['id_user']; ?>" class="btn btn-warning">Edit Data</a>
		</div>

		<!-- BATAS -->

		<div class="col-md-6">
			<span style="font-weight:bold;font-size:17px;">DATA ORANG TUA/WALI</span>
			<br><p></p>
			<table class="table">
				<?php $ortu = mysqli_fetch_assoc($exec_ortu); ?>
				<tr>
					<th>Nama Ayah</th>
					<td>:</td>
					<td><?= $ortu['nama_ayah']; ?></td>
				</tr>
				<tr>
					<th>Pekerjaan Ayah</th>
					<td>:</td>
					<td><?= $ortu['pkrjn_ayah']; ?></td>
				</tr>
				<tr>
					<th>Nama Ibu</th>
					<td>:</td>
					<td><?= $ortu['nama_ibu']; ?></td>
				</tr>
				<tr>
					<th>Pekerjaan Ibu</th>
					<td>:</td>
					<td><?= $ortu['pkrjn_ibu']; ?></td>
				</tr>
				<tr>
					<th>No. HP Ayah/Ibu</th>
					<td>:</td>
					<td><?= $ortu['no_hp_ortu']; ?></td>
				</tr>
				<tr>
					<th>Alamat Ayah/Ibu</th>
					<td>:</td>
					<td><?= $ortu['alamat_ortu']; ?></td>
				</tr>
				<tr>
					<th>Nama Wali</th>
					<td>:</td>
					<td><?= $ortu['nama_wali']; ?></td>
				</tr>
				<tr>
					<th>Pekerjaan Wali</th>
					<td>:</td>
					<td><?= $ortu['pkrjn_wali']; ?></td>
				</tr>
				<tr>
					<th>No. HP Wali</th>
					<td>:</td>
					<td><?php  //$ortu['no_hp_wali']; ?></td>
				</tr>
				<tr>
					<th>Alamat Wali</th>
					<td>:</td>
					<td><?= $ortu['alamat_wali']; ?></td>
				</tr>
			</table>

			<?php

				if ($nr_ot == 0) {
					echo "<a href='tambah.ortu.siswa.$id_user' class='btn btn-warning'>Edit Data</a>";
				} else {
					echo "<a href='edit.ortu.siswa.$id_user' class='btn btn-warning'>Edit Data</a>";	
				}


			?>
		</div>

		<!-- BATAS LAGI -->
		<div class="col-md-12" style="margin-top:20px;">
			<span style="font-weight:bold;font-size:17px;">DATA NILAI</span>
			<br><p></p>
			<table class="table">
				<tr>
					<th colspan="5"><h4>1. Data Nilai</h4></th>
				</tr>
				<tr class="center">
					<th>Mata Pelajaran</th>
					<td>B. Indonesia</td>
					<td>Ilmu Pengetahuan Alam</td>
					<td>Matematika</td>
					<td>B. Inggris</td>
				</tr>
				<tr class="nilai">
					<th style="text-align:left !important;">Nilai</th>
					<?php $n = mysqli_fetch_assoc($exec_nilai); ?>
					<th><?= $n['bindo']; ?></th>
					<th><?= $n['ipa']; ?></th>
					<th><?= $n['mtk']; ?></th>
					<th><?= $n['binggris']; ?></th>
				</tr>
				<tr>
					<th>NEM</th>
					<th class="center"><?= $n['nem']; ?></th>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th colspan="5"><h4>2. Data Kelulusan</h4></th>
				</tr>
				<tr>
					<th>No. Ijazah</th>
					<td class="center"><?= $n['no_ijazah']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th>Tanggal Ijazah</th>
					<td class="center"><?= $n['tgl_ijazah']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th>No. SKHUN</th>
					<td class="center"><?= $n['no_skhun']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th>Tanggal SKHUN</th>
					<td class="center"><?= $n['tgl_skhun']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th colspan="5"><h4>3. Data Kejuruan</h4></th>
				</tr>
				<tr>
					<td colspan="2">Pilihan ke-1</td>
					<td colspan="3">Pilihan ke-2</td>
				</tr>
				<tr>
					<th colspan="2"><?= $n['pilihan_1']; ?></th>
					<th colspan="3"><?= $n['pilihan_2']; ?></th>
				</tr>
			</table>
			<?php 
				if ($nr_nil == 0) {
					echo "<a href='tambah.nilai.siswa.$id_user' class='btn btn-warning'>Edit Data</a>";
				} else {
					echo "<a href='edit.nilai.siswa.$id_user' class='btn btn-warning'>Edit Data</a>";
				}

			?>
			<span class="batas"></span>
			<?php

				if ($x['verifikasi'] == 0) { ?>
					<a href="verifikasi.<?= $id_user; ?>" class="btn btn-danger">Verifikasi</a>
			<?php } else {

					if (@$_SESSION['admin']['level'] == 1) { ?>
						<a href="cetak.<?= $id_user; ?>" class="btn btn-info">Cetak</a>
			<?php	} else {
						echo " ";
					}
				}
			?>

		</div>
	</div>
</div>