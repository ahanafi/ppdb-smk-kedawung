<?php
include_once '../function/main.php';
//session_start();

session_unset(@$_SESSION['admin']['username'] && @$_SESSION['admin']['password']);
?>

<script>alert('Logout berhasil!');window.location='../admin/login';</script>