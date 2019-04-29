<?php
require '../function/connect.php';

session_destroy();
session_unset(@$_SESSION['student']['username'] && @$_SESSION['student']['password']);

?>
<script>alert('Logout Sukses!');window.location='../beranda';</script>