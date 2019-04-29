<?php
$servername	= "localhost";
$userename	= "root";
$password	= "";
$dbname		= "ppdb";
//membuat koneksi
$link = mysqli_connect($servername, $userename, $password, $dbname) or die("Koneksi ke database Gagal : ".mysqli_connect_error($link));

?>