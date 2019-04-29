<?php
include_once '../function/main.php';

unset($_SESSION['admin']['username']);
unset($_SESSION['admin']['password']);
?>

<script>alert('Logout berhasil!');window.location='login';</script>