<?php
include_once '../function/main.php';

$id_user = @$_GET['id_user'];

$sql_usr = "DELETE FROM tb_users WHERE id = '$id_user'";
$sql_bio = "DELETE FROM tb_biodata WHERE id_user = '$id_user'";
$sql_nil = "DELETE FROM tb_nilai WHERE id_user = '$id_user'";

$exc_usr = mysqli_query($link, $sql_usr);
$exc_bio = mysqli_query($link, $sql_bio);
$exc_nil = mysqli_query($link, $sql_nil);

if ($exc_usr && $exc_bio && $exc_nil) {
	echo "<script>alert('Berhasil di hapus!');window.location='pendaftar';</script>";
} else {
	echo "<script>alert('Gagal di hapus!');window.location='pendaftar';</script>";
}
?>