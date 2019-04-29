<?php
include_once '../function/main.php';

$id = @$_GET['id'];

global $link;
$sql = "DELETE FROM tb_pengumuman WHERE id = '$id'";
$exec = mysqli_query($link, $sql);

if ($exec) {
	echo "<script>alert('Pengumuman telah dihapus!');window.location='pengumuman';</script>";
} else {
	echo "<script>alert('Pengumuman gagal dihapus!');</script>";
}
?>