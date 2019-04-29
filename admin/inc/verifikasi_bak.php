 <?php
include_once '../function/main.php';
$id_user = @$_GET['id_user'];
$ver = 1;
global $link;

$sql_nil = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";
$ex_nil = mysqli_query($link, $sql_nil);
$nil = mysqli_fetch_assoc($ex_nil);

if ($nil['pilihan_1'] == "Akuntansi") {
	$kj = 'A';
} else if($nil['pilihan_1'] == "Administrasi Perkantoran"){
	$kj = 'B';
} else if($nil['pilihan_1'] == "Pemasaran") {
	$kj = 'C';
} else if($nil['pilihan_1'] == "Usaha Perjalanan Wisata"){
	$kj = 'D';
} else if($nil['pilihan_1'] == "Multimedia"){
	$kj = 'E';
} else if($nil['pilihan_1'] == "Perbankan"){
	$kj = 'F';
} else {
	echo "Pilihan 1 belum ada!";
}

if ($nil['pilihan_2'] == "Akuntansi") {
	$kj2 = 'A';
} else if($nil['pilihan_2'] == "Administrasi Perkantoran"){
	$kj2 = 'B';
} else if($nil['pilihan_2'] == "Pemasaran") {
	$kj2 = 'C';
} else if($nil['pilihan_2'] == "Usaha Perjalanan Wisata"){
	$kj2 = 'D';
} else if($nil['pilihan_2'] == "Multimedia"){
	$kj2 = 'E';
} else if($nil['pilihan_2'] == "Perbankan"){
	$kj2 = 'F';
} else {
	echo "Pilihan 1 belum ada!";
}

$no_peserta = $kj.$kj2."000".$id_user;
//die();
$sql_ver = "UPDATE tb_biodata SET verifikasi = '$ver', no_peserta = '$no_peserta' WHERE id_user = '$id_user'";
$sql_usr = "UPDATE tb_users SET verified = '$ver' WHERE id = '$id_user'";
$exver = mysqli_query($link, $sql_ver);
$exe = mysqli_query($link, $sql_usr);
//die(var_dump($exver));
if ($exver && $exe) {?>
	<script>alert('Berhasil diverifikasi');window.location='pendaftar';</script>
<?php
} else { ?>
	<script>alert('Gagal diverifikasi');window.location='pendaftar';</script>
<?php
}
?>
