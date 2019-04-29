<?php

function get_data($sql){
	global $link;

	if ($x = mysqli_query($link, $sql) or die(mysqli_error($link))) {
		return $x;
	}
}

function execute($sql){
	global $link;

	if (mysqli_query($link, $sql) or die("Error to execute!")) {
		return TRUE;
	} else {
		return FALSE;
	}
}

function print_data($id_user, $sql){

	$sql = "SELECT tb_users .name, tb_biodata .* FROM tb_users JOIN tb_biodata ON tb_users .id = tb_biodata  .id_user WHERE tb_users .id = '$id_user'";

	return get_data($sql);
}

function get_ortu($id_user, $sql){
	$sql = "SELECT * FROM tb_orangtua WHERE id_user = '$id_user'";

	return get_data($sql);
}

function get_nilai($id_user, $sql){
	$sql = "SELECT * FROM tb_nilai WHERE id_user = '$id_user'";

	return get_data($sql);
}

function get_pendaftar(){
	$sql = "SELECT tb_biodata .*, tb_users .* FROM tb_users JOIN tb_biodata ON tb_users .id = tb_biodata  .id_user ORDER BY verifikasi";
	return get_data($sql);
}

function get_ver_false(){
	$sql = "SELECT COUNT(*) FROM tb_biodata WHERE verifikasi = 0";
	return get_data($sql);
}

function get_ver_true(){
	$sql = "SELECT COUNT(*) FROM tb_biodata WHERE verifikasi = 1";
	return get_data($sql);
}

function get_mod_bobot(){
	$sql = "SELECT * FROM tb_bobot ";

	return get_data($sql);
}

function head_print($x){
$x->Image('../img/kh.png');
$x->SetFont('Times','B',14);
$x->SetX(6.5);
}

function get_bukti_print($id_user){
	$sql = "SELECT `tb_nilai`.`nem`, `tb_biodata` .* FROM `tb_nilai` JOIN `tb_biodata` ON `tb_nilai`.`id_user` = `tb_biodata`.`id_user` WHERE `tb_biodata`.`id_user` = '$id_user'";

	return get_data($sql);
}

function ubahtgl($tgl){
	$pisah 		= explode('/', $tgl);
	$larik 		= array($pisah[2], $pisah[1], $pisah[0]);
	$satukan	= implode('-', $larik);

	return $satukan;
}

function ubahtgl_db($tgl){
	$pisah 		= explode('-', $tgl);
	$larik 		= array($pisah[2], $pisah[1], $pisah[0]);
	$satukan	= implode('/', $larik);

	return $satukan;
}


function conf_bio($x, $idb, $nr_bio){
	if($x == 0){
			if($nr_bio == 0){ ?>
				<a href="biodata" class="btn btn-warning">Edit Data</a>
		<?php } else { ?>
				<a href="edit.bio.<?= $idb; ?>" class="btn btn-warning">Edit Data</a>
		<?php } ?>

	<?php } else {
		echo "";
	} 
}

function conf_ot($x, $ortu, $nr_ot){
	if ($x == 0) { 
			if($nr_ot == 0){ ?>
				<a href="data.orang.tua" class="btn btn-warning">Edit Data</a>
		<?php	} else { ?>
				<a href="edit.ortu.<?= $ortu; ?>" class="btn btn-warning">Edit Data</a>
		<?php	} ?>
	<?php } else {
		echo "";
	}
}

function conf_nil($x, $n, $nr_nil){
	if ($x == 0) { 
			if($nr_nil == 0){ ?>
				<a href="nilai" class="btn btn-warning">Edit Data</a>
		<?php } else { ?>
				<a href="edit.nilai.<?= $n; ?>" class="btn btn-warning">Edit Data</a>
	<?php	} 
	 } else {
		echo "";
	}
}

function btn_conf($x, $verifikasi, $n){
	if ($x == 0) {  ?>
		<a href="konfirmasi.data.<?= $n; ?>" class='btn btn-info' style="float:right;">Konfrimasi Data Saya</a>
		<p style="color:red;padding:15px;margin-top:60px;background:#fff;"><strong style="color:#000;">NOTE : </strong>Jika Data Anda sudah benar dan valid, klik tombol <strong>Konfirmasi Data Saya</strong></p>
	<?php } else {

		if ($verifikasi == 1) { ?>
			<a class="btn btn-primary" style="float:right;" disabled> Selamat, Anda telah diverifikasi! </a>
		<?php } else { ?>
			<a href="#" class='btn btn-primary' style="float:right;" disabled>Menunggu Verifikasi Panitia</a>
<?php 
		}

	}
}

function get_smp(){
	$sql = "SELECT * FROM tb_smp ";

	return get_data($sql);
}

function tambahnol($num){
	if(strlen($num) == 1){
		$add = "0000";
	} else if(strlen($num) == 2){
		$add = "000";
	} else if(strlen($num) == 3){
		$add = "00";
	} else if(strlen($num) == 4){
		$add = "0";
	} else if(strlen($num) == 5){
		$add = "";
	}	
	return $add.$num;
}

function get_admin($id){
	$sql = "SELECT * FROM tb_admin WHERE id = '$id'";

	return get_data($sql);
}

function count_jlr_daftar($x){
	$sql = "SELECT COUNT(*) FROM tb_users JOIN tb_biodata ON tb_users .id = tb_biodata .id_user  WHERE pil_daftar = '$x' AND verifikasi = 1 ";

	return get_data($sql);
}

function count_jur($x){
	$sql = "SELECT COUNT(*) FROM `tb_biodata` JOIN `tb_nilai` ON `tb_biodata` .`id_user` = `tb_nilai` .`id_user`  WHERE `pilihan_1` = '$x' AND verifikasi = 1 ";

	return get_data($sql);
}

function count_msg(){
	$sql = "SELECT COUNT(*) FROM tb_pesan ";

	return get_data($sql);
}

?>