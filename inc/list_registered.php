<?php
include_once './function/connect.php';
global $link;
$sql = "SELECT `tb_nilai`.`nem`, `tb_biodata` .* FROM `tb_nilai` JOIN `tb_biodata` ON `tb_nilai`.`id_user` = `tb_biodata`.`id_user` WHERE verifikasi = 1";
$exc = mysqli_query($link, $sql);
$no = 1;
?>

<script>
	$(document).ready(function(){
		$('#my-table').dataTable({
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
<div id="list-reg">
	<div class="container">
		<h3>Daftar Siswa yang telah diverifikasi</h3>
		<br>
		<table class="table table-bordered table-striped" id="my-table">
			<thead style="background:#2C3E50;color:#fff;">
				<tr>
					<th>No.</th>
					<th>Nomor Peserta</th>
					<th>Nama</th>
					<th>NISN</th>
					<th>Asal Sekolah</th>
					<th>Nem</th>
					<th>Keterangan</th>
				</tr>
			</thead>
			<tbody>
			<?php while ($list = mysqli_fetch_assoc($exc)) { ?>
				<tr>
					<td><?= $no; ?></td>
					<td><?= $list['no_peserta']; ?></td>
					<td><?= $list['name']; ?></td>
					<td><?= $list['nisn']; ?></td>
					<td><?= $list['asal_smp']; ?></td>
					<td><?= $list['nem']; ?></td>
					<?php
						if($list['verifikasi'] == 0){
							$verifikasi = "Belum di verifikasi";
						} else {
							$verifikasi = "Telah diverifikasi";
						}
					?>
					<td><?= $verifikasi; ?></td>
				</tr>
			<?php $no++; } ?>
			</tbody>
		</table>
	</div>
</div>