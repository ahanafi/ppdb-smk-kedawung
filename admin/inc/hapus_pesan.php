<?php
include_once '../function/main.php';

$id = @$_GET['id'];

global $link;
$sql = "DELETE FROM tb_pesan WHERE id = '$id'";
$exec = mysqli_query($link, $sql);

if ($exec) {
	echo "<script>alert('Pesan telah dihapus!');window.location='pesan';</script>";
} else {
	echo "<script>alert('Pesan gagal dihapus!');</script>";
}
?>