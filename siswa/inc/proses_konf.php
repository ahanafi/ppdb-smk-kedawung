<?php
include_once '../function/main.php';
global $link;

$id_user = @$_SESSION['student']['id_user'];
$sql = "UPDATE tb_biodata SET konfirmasi = 1 WHERE id_user = '$id_user'";

$exec = mysqli_query($link, $sql);

//die(var_dump($exec));

if ($exec) { ?>
	<script>alert('Data berhasil dikonfirmasi dan menunggu untuk diverifikasi oleh Panitia!');window.location='../beranda'</script>
	<?php session_destroy(); ?>
<?php } else { ?>
	<script>alert('Data Gagal di konfirmasi!');window.location='konfirmasi'</script>
<?php  }  ?>