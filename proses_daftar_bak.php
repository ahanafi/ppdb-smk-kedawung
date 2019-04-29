<?php

include_once 'function/main.php';

if (isset($_POST['daftar'])) {
	$name		= $_POST['name'];
	$email		= $_POST['email'];
	$username	= $_POST['username'];
	$password	= md5($_POST['password']);

/*	if ($name == '' || $email == '' || $username || $password == '') {
		echo "<script>alert('Form Daftar harus diisi semua!');window.location='beranda#daftar';</script>";
	} else {*/

	$sql = "INSERT INTO `tb_users` (`id`, `name`, `email`, `username`, `password`, `verified`, `created_at`, `updated_at`) VALUES (null, '$name', '$email', '$username', '$password', 'No', CURRENT_TIMESTAMP, '0000-00-00 00:00:00.000000')";
	global $link;
	$exec = mysqli_query($link, $sql);
	//die(print_r($sql));

	if ($exec) { ?>
		<script>alert('Daftar sukses! Silahkan Login');window.location='beranda#daftar';</script>	
<?php } else { ?>
		<script>alert('Daftar gagal! Silahkan Ulangi lagi');window.location='beranda';</script>
<?php	}
	}

?>
