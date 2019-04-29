<?php
include_once '../function/main.php';

 //$sql = "SELECT `tb_biodata` .* , `tb_nilai` .* FROM `tb_biodata` JOIN `tb_nilai` ON `tb_biodata` .`id_user` = `tb_nilai` .`id_user` WHERE `verifikasi` = 1 ORDER BY `tb_biodata`.`id_user`";

//3 tabel

$sql = "SELECT `tb_users`. *, `tb_biodata` .*, `tb_nilai`. * FROM `tb_users` JOIN `tb_biodata` ON `tb_users`.`id` = `tb_biodata`.`id_user` JOIN `tb_nilai` ON `tb_users`.`id` = `tb_nilai`.`id_user` WHERE `tb_biodata`.`verifikasi` = 1 ORDER BY `tb_users`.`id` ";


$exc = mysqli_query($link, $sql);
$ses = @$_SESSION['admin']['username'];
$no = 1;
?>
<style>
	th, tr, td{
		font-size: 13px !important;
		font-weight: normal !important;

	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#table-nilai').dataTable({
			"sDom"	: 'T<"clear">lfrtip',
			"oTableTools": {
				"sSwfPath": "../assets/dataTable/extras/TableTools/media/swf/copy_csv_xls_pdf.swf"
			},
			"oLanguage" : {
				"sLengthMenu" 	: "Tampilan _MENU_ data",
				"sSearch"	  	: "Cari : ",
				"sZeroRecords"	: "Data tidak ditemukan!",
				"sInfo"		 	: "_START_ sampai _END_ dari _TOTAL_ data",
				"sInfoEmpty"  	: "0 hingga 0 dari 0 entri",
				"sInfoFiltered"	: "(disaring dari _MAX_ entri keseluruhan)",

				"oPaginate"		: {
					"sFirst"	: "Awal",
					"sLast"		: "Akhir",
					"sPrevious"	: "Kembali",
					"sNext"		: "Selanjutnya"
				}
			}
		});
	});
</script>
<div class="panel panel-default">
	<div class="panel-body content-adm">
		<h3>Entry Data Nilai Test</h3>
		<br>
		<table class="table table-bordered" id="table-nilai">
			<thead>
				<tr>
					<th>No</th>
					<th>Nama</th>
					<th>No. Peserta</th>
					<th class="center">Asal Sekolah</th>
					<th class="center">Jalur Daftar</th>
					<th>Pil. 1</th>
					<th>Pil. 2</th>
					<th class="center">B. Indonesia</th>
					<th class="center">IPA</th>
					<th class="center">MTK</th>
					<th class="center">B.Inggris</th>
					<th class="center">NEM</th>
					<th class="Center">Test Akademik</th>
					<th class="Center">Test Kejuruan</th>
					<th class="Center">Psikotes</th>
					<th class="Center">Opsi</th>
				</tr>
			</thead>
			<tbody>

			<?php while ($x = mysqli_fetch_assoc($exc)) { ?>
			<?php
				if ($x['pilihan_1'] == "Akuntansi") {
					$pil1 = "AK";
				} else if($x['pilihan_1'] == "Administrasi Perkantoran" || $x['pilihan_2'] == "Administrasi Perkantoran"){
					$pil1 = "AP";
				} else if($x['pilihan_1'] == "Multimedia"){
					$pil1 = "MM";
				} else if($x['pilihan_1'] == "Pemasaran"){
					$pil1 = "PM";
				} else if($x['pilihan_1'] == "Usaha Perjalanan Wisata"){
					$pil1 = "UPW";
				} else if($x['pilihan_1'] == "Perbankan"){
					$pil1 = "PB";
				}

				if ($x['pilihan_2'] == "Akuntansi") {
					$pil2 = "AK";
				} else if($x['pilihan_2'] == "Administrasi Perkantoran" || $x['pilihan_2'] == "Administrasi Perkantoran"){
					$pi2 = "AP";
				} else if($x['pilihan_2'] == "Multimedia"){
					$pil2 = "MM";
				} else if($x['pilihan_2'] == "Pemasaran"){
					$pil2 = "PM";
				} else if($x['pilihan_2'] == "Usaha Perjalanan Wisata"){
					$pil2 = "UPW";
				} else if($x['pilihan_2'] == "Perbankan"){
					$pil2 = "PB";
				}

			?>

				<tr>
					<td><?= $no; ?></td>
					<td><?= $x['name']; ?></td>
					<td><?= $x['no_peserta']; ?></td>
					<td class="center"><?= $x['asal_smp']; ?></td>
					<td class="center"><?= $x['pil_daftar']; ?></td>
					<td><?= $pil1; ?></td>
					<td><?= $pil2; ?></td>
					<td class="center"><?= $x['bindo']; ?></td>
					<td class="center"><?= $x['ipa']; ?></td>
					<td class="center"><?= $x['mtk']; ?></td>
					<td class="center"><?= $x['binggris']; ?></td>
					<td class="center"><?= $x['nem']; ?></td>
					<td class="Center"><?= $x['akademik']; ?></td>
					<td class="Center"><?= $x['kejuruan']; ?></td>
					<td class="Center"><?= $x['psikotes']; ?></td>
					<td class="Center">
						<a href="edit.nilai.test.<?= $x['id_user']; ?>" class="btn-opt btn-primary">Edit</a>
						<?php if($ses == "admin"){ ?>
						<a onclick="return konfirmasi();" href="hapus_nilai.php?id_user=<?= $x['id_user']; ?>" class="btn-opt btn-danger">Hapus</a>
						<?php } else { echo "";} ?>
					</td>
				</tr>

				<?php $no++; } ?>

			</tbody>
		</table>
	</div>
</div>