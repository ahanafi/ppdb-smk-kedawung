<?php
include_once '../function/main.php';

if (@$_SESSION['admin']['username']  && @$_SESSION['admin']['password']) {
	header('Location: index.php');
} else {

?>
<title>
	Login Panitia PPDB Online
</title>
<div class="col-md-4 col-md-offset-4 box-login">
	<div class="panel panel-info">
		<div class="panel-heading">
			Login Panitia PPDB Online
		</div>
		<div class="panel-body">
			<form action="" method="post" class="form-group">
				<!--div class="input-group">
					<!--span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span-->
					<input type="text" name="username" class="form-control center" placeholder="Username" autocomplete="off"><br>
				<!--/div>
				<br>
				<div class="input-group">
					<!--span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span-->
					<input type="password" name="password" class="form-control center" placeholder="Password" autocomplete="off">
				<!--/div-->
				<br>
				<input type="submit" name="login" value="Login!" class="btn btn-primary form-control">
			</form>
		</div>
	</div>
</div>

<?php

if (isset($_POST['login'])) {
	global $link;
	$username 	= mysqli_real_escape_string($link, $_POST['username']);
	$password 	= mysqli_real_escape_string($link, md5($_POST['password']));

	if ($username == '' OR $password == '') {
		echo "<script>alert('Error! Form login harus diisi semua!');window.location='login.php';</script>";
	} else {

	$sql = "SELECT * FROM tb_admin WHERE username = '$username' AND password = '$password'";
	$exec = mysqli_query($link, $sql);
	$data = mysqli_fetch_assoc($exec);
	$x = mysqli_num_rows($exec);

	if ($x != 0) {
		header('Location: index.php');
		session_start();
		$_SESSION['admin']['username'] = $data['username'];
		$_SESSION['admin']['password'] = $data['password'];
	} else { ?>
		<script>alert('Login Gagal!, Silahkan ulangi lagi');</script>
<?php
	}
}
}
}
?>