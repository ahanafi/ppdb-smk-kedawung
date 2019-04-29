<?php

include_once 'function/connect.php';

global $link;

//FIX with VALIDASI USERNAME YANG SAMA!

if (isset($_POST['daftar'])) {
	$name		= $_POST['name'];
	$nisn 		= $_POST['nisn'];
	$pil_daftar = "Akademis";

	if (!empty(trim($name)) && !empty(trim($pil_daftar))) {

		$sql_cek = "SELECT * FROM tb_biodata WHERE nisn = '$nisn' ";
		$ex_cek  = mysqli_query($link, $sql_cek);
		$cek 	 = mysqli_num_rows($ex_cek);

		//die(var_dump($cek));
		if ($cek == 1) {
			echo "<script>alert('Daftar gagal!, NISN telah terdaftar di database kami!');window.location='beranda#daftar';</script>";
		} else {
		
			$sql_in = "INSERT INTO tb_users (id, name, pil_daftar) VALUES (null, '$name', '$pil_daftar')";
			$exin = mysqli_query($link, $sql_in);

			//var_dump($exin);
			//die();

			if ($exin) {
				$sql_ses = "SELECT * FROM tb_users WHERE name = '$name' AND pil_daftar = '$pil_daftar' ";
				$ex_ses = mysqli_query($link, $sql_ses);
				$data = mysqli_fetch_array($ex_ses);
				session_start();
				// $_SESSION['student']['id'] = $data['id'];
				// echo $_SESSION['student']['id'];
				// die();
				$_SESSION['student']['id_user']		= $data['id'];
				$_SESSION['student']['name'] 		= $data['name'];
				$_SESSION['student']['pil_daftar']	= $data['pil_daftar'];
				$_SESSION['student']['nisn']		= $nisn;
				echo "<script>alert('Daftar Berhasil!');</script>";
				header('Location: siswa/');
			} else {
				echo "<script>alert('Daftar Gagal! Silahkan ulangi lagi');window.location='beranda#daftar';</script>";
			}
		}

	} else {
		echo "<script>alert('From daftar tidak boleh ada yang kosong!');window.location='beranda#daftar';</script>";
	}

}

?>