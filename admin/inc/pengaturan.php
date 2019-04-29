<?php
include_once '../function/main.php';

$id    = @$_SESSION['admin']['id'];

$mod = get_mod_bobot();
$adm = get_admin($id);
$level = @$_SESSION['admin']['level'];

$no = 1;
?>
<style>
	th, td{
		text-align: center !important;
	}
</style>
<div class="panel panel-default">
	<div class="panel-body content-adm">
		<div class="col-md-12">
			<fieldset>
				<legend>
					<h4>Modul Bobot</h4>
				</legend>			
				<br>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th rowspan="2" style="padding-bottom:30px;">No</th>
							<th rowspan="2" style="padding-bottom:30px;">Nama Kejuruan</th>
							<th colspan="4">Mata Pelajaran</th>
							<th rowspan="2"  style="padding-bottom:30px;">Kode Jurusan</th>
						</tr>
						<tr>
							<th>B.Indonesia</th>
							<th>Ilmu Pengetahuan Alam</th>
							<th>Matematika</th>
							<th>B.Inggris</th>
						</tr>					
					</thead>
					<tbody>
						<?php while ($bob = mysqli_fetch_array($mod)) { ?>
						<tr>
							<td><?= $no; ?></td>
							<td><?= $bob['nama_kejuruan']; ?></td>
							<td><?= $bob['b_indonesia']." %"; ?></td>
							<td><?= $bob['ipa']." %"; ?></td>
							<td><?= $bob['matematika']." %"; ?></td>
							<td><?= $bob['b_inggris']." %"; ?></td>
							<td><?= $bob['kode_jurusan']; ?></td>
						</tr>
						<?php $no++;} ?>
					</tbody>
				</table>
			</fieldset>
	
			<br>
			
			<?php if($level == 1){ ?>
			<div class="col-md-6">
				<h4>Tambah Admin Baru</h4>
				<br>
				<form action="" method="post" class="form-group">
					<label for="username">Username</label>
					<input type="text" name="username" class="form-control">
					<br>
					<label for="password">Password</label>
					<input type="password" name="password" class="form-control">
					<br>
					<label for="level">Level</label>
					<select name="level" class="form-control">
						<option value="1">Administrator</option>
						<option value="0">Operator</option>
					</select>
					<br>
					<input type="submit" name="tambah" class="btn btn-primary" value="Tambahkan!">
				</form>
			</div>
			<?php } else {echo "";} ?>
			<div class="col-md-6">
				<h4>Detail Admin</h4>
				<br>
				<br>
				<table class="table table-bordered">
				<?php ($a = mysqli_fetch_assoc($adm)); ?>
					<tr>
						<th>Username</th>
						<td>:</td>
						<td><?= $a['username']; ?></td>
					</tr>
					<tr>
						<th>Password</th>
						<td>:</td>
						<td><?= $a['password']; ?></td>
					</tr>
					<tr>
						<td><a class="btn-opt btn-primary" data-toggle="modal" data-target="#modal-adm">Edit</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>				
			</div>


		</div>
	</div>
</div>

<div class="modal fade" id="modal-adm" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Edit Data Operator</h4>
			</div>
			<div class="modal-body">
				<form action="" method="post" class="form-group">
					<label for="username">Username</label>
					<input type="text" name="username" class="form-control" autocomplete="off" value="<?= $a['username']; ?>">
					<br>
					<label for="password">Password</label>
					<input type="password" name="password" class="form-control" value="<?= $a['password']; ?>">
			</div>
			<div class="modal-footer">
				<input type="submit" name="simpan" value="Simpan!" class="btn btn-primary">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
if (isset($_POST['simpan'])) {
	$username = $_POST['username'];
	$password = md5($_POST['password']);

	$query = "UPDATE tb_admin SET username = '$username', password = '$password' WHERE id = '$id'";

	$execute = mysqli_query($link, $query);

	//die(var_dump($query));
	if ($execute) {
		echo "<script>alert('Edit data berhasil');window.location='pengaturan';</script>";
	} else {
		echo "<script>alert('Edit data gagal!');window.location='pengaturan';</script>";
	}
}

if (isset($_POST['tambah'])) {
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	$level    = $_POST['level'];

	$sqlin = "INSERT INTO tb_admin (id, username, password, level) VALUES (null, '$username', '$password', '$level')";
	$exin = mysqli_query($link, $sqlin);

	if ($exin) {
		echo "<script>alert('Tambah Admin baru berhasil');window.location='pengaturan';</script>";
	} else {
		echo "<script>alert('Tambah Admin baru gagal!');window.location='pengaturan';</script>";
	}
}


?>