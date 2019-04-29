<?php

include_once 'function/main.php';

if (isset($_POST['login'])) {
	global $link;	
	$username	= mysqli_real_escape_string($link, $_POST['username']);
	$password	= mysqli_real_escape_string($link, md5($_POST['password']));

	$sql 	= "SELECT * FROM tb_users WHERE username = '$username' AND password = '$password'";
	$exec 	= mysqli_query($link, $sql);
	$nr 	= mysqli_num_rows($exec);
	$data = mysqli_fetch_assoc($exec);

	if ($nr != 0) {
		header('Location: siswa/home');
		session_start();
		$_SESSION['student']['id_user']	 = $data['id'];
		$_SESSION['student']['name'] = $data['name'];
		$_SESSION['student']['username'] = $data['username'];
		$_SESSION['student']['password'] = $data['password'];
	} else {
		echo "<script>alert('Login Gagal!');window.location='beranda#daftar';</script>";
	}
}
?>