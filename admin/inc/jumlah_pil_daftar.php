<style>
	.box{
		border: 2px solid #333;
		padding: 5px;
		width: 100%;
		font-size: 15px;
	}
</style>
<h3>INFO</h3>
<div class="box">

<?php

$af = "Afirmasi";
$pgri = "PGRI";
$prs = "Prestasi";
$akd = "Akademis";
$no =1;

//Menghitung jumlah pendaftar berdasarkan jalur yang dipilih
$a = count_jlr_daftar($af);
$b = count_jlr_daftar($pgri);
$c = count_jlr_daftar($prs);
$d = count_jlr_daftar($akd);

$data_af  = mysqli_fetch_array($a);
$data_pgri  = mysqli_fetch_array($b);
$data_prs  = mysqli_fetch_array($c);
$data_akd  = mysqli_fetch_array($d);
$total = ($data_af['COUNT(*)']+$data_pgri['COUNT(*)']+$data_prs['COUNT(*)']+$data_akd['COUNT(*)']);


$adm = "Administrasi Perkantoran";
$akt = "Akuntansi";
$mult = "Multimedia";
$pmsr = "Pemasaran";
$pbnk = "Perbankan";
$prwst = "Usaha Perjalanan Wisata";


//Menghitung jumlah pendaftar berdasarkan pilihan-1 (kerjuruannya);
$ap = count_jur($adm);
$ak = count_jur($akt);
$mm = count_jur($mult);
$pm = count_jur($pmsr);
$pb = count_jur($pbnk);
$upw = count_jur($prwst);

$data_ap = mysqli_fetch_array($ap);
$data_ak = mysqli_fetch_array($ak);
$data_mm = mysqli_fetch_array($mm);
$data_pm = mysqli_fetch_array($pm);
$data_pb = mysqli_fetch_array($pb);
$data_upw = mysqli_fetch_array($upw);

?>
<table class="table table-bordered">
	<thead>
		<tr style="background:#fff !important;color:#000 !important;font-size:18px !important;font-weight:bold;">
			<td colspan="3">Jumlah Pendaftar berdasarkan jalur pendaftaran yang dipilih <br><p></p></td>
		</tr>
		<tr>
			<th class="center">No.</th>
			<th>Jalur Pendaftaran</th>
			<td>Jumlah <b>(/orang)</b></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="center">1</td>
			<td><b><?= $af; ?></b></td>
			<td><?= $data_af['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">2</td>
			<td><b><?= $pgri; ?></b></td>
			<td><?= $data_pgri['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">3</td>
			<td><b><?= $prs; ?></b></td>
			<td><?= $data_prs['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">4</td>
			<td><b><?= $akd; ?></b></td>
			<td><?= $data_akd['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">5</td>
			<td>Total Pendaftar</td>
			<td><?= $total." orang"; ?></td>
		</tr>
		<tr style="background:#fff !important;color:#000 !important;font-size:18px !important;font-weight:bold;">
			<td colspan="3"><br>Jumlah Pendaftar berdasarkan kejuruan yang dipilih <br><p></p></td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th class="center">No.</th>
			<th>Jurusan</th>
			<td>Jumlah <b>(/orang)</b></td>
		</tr>
	</thead>
		<tr>
			<td class="center">1</td>
			<td>Administrasi Perkantoran</td>
			<td><?= $data_ap['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">2</td>
			<td>Akuntansi</td>
			<td><?= $data_ak['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">3</td>
			<td>Multimedia</td>
			<td><?= $data_mm['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">4</td>
			<td>Pemasaran</td>
			<td><?= $data_pm['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">5</td>
			<td>Usaha Perjalanan Wisata</td>
			<td><?= $data_upw['COUNT(*)']." orang"; ?></td>
		</tr>
		<tr>
			<td class="center">6</td>
			<td>Perbankan</td>
			<td><?= $data_pb['COUNT(*)']." orang"; ?></td>
		</tr>
</table>
</div>