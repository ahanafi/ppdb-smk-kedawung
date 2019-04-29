<?php
include_once '../function/main.php';

$id_user = @$_GET['id_user'];

global $link;
$sql = "DELETE FROM tb_nilai WHERE id_user = '$id_user'";
$exec = mysqli_query($link, $sql);

if ($exec) {
	echo "<script>alert('Nilai telah dihapus!');window.location='nilai.test';</script>";
} else {
	echo "<script>alert('Nilai gagal dihapus!');</script>";
}
?>