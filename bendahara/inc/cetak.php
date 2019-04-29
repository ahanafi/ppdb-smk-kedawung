<?php
include_once '../function/main.php';
require_once '../assets/fpdf/fpdf.php';
global $link;

$id_user = $_GET['id_user'];
$get = get_bukti_print($id_user);
$data = mysqli_fetch_assoc($get);

$panitia = @$_SESSION['admin']['username'];

if ($panitia == "asep") {
	$pan = "Asep Taufik, S.Pd";
} else if($panitia == "deden"){
	$pan = "Deden Badruzzaman, S.Pd";
} else if($panitia == "sobirin"){
	$pan = "Sobirin, A.Md";
} else if($panitia == "harda"){
	$pan = "Harda Rizkie";
} else if($panitia == "eva"){
	$pan = "Eva Fauziah, S.Pd., M.Pd";
} else if($panitia == "maman"){
	$pan = "Drs. Maman Sukmana, S.H";
}  else if($panitia == "dedeh"){
	$pan = "Dedeh Darliah, S.Pd";
} else if($panitia == "Bendahara"){
	$pan = "Rosnanti, S.Pd";
} else {
	$pan = "Administrator Pusat";
}

$sql_print = "UPDATE tb_biodata SET print = 'Yes' WHERE id_user = '$id_user'";
$ex_print = mysqli_query($link, $sql_print);
//die(var_dump($ex_print));

if ($ex_print) {
	echo "<script>Cetak sedang diproses</script>";
} else {
	echo "<script>Gagal mencetak</script>";
}

$x = new FPDF ("P", "cm", "A4");

$x->SetMargins(1, 1, 1, 1);
$x->AliasNbPages();
$x->AddPage();
head_print($x);
$x->MultiCell(10,1.5,'TANDA BUKTI PENDAFTARAN PPDB',0,'P');
$x->SetX(7.5);
$x->MultiCell(10,0,'Tahun Pelajaran 2016/2017',0,'P');
$x->Ln(1);
$x->SetFont('Times','',11);
$x->Cell(4,1,'Nomor Pendaftaran',0,'P');
$x->Cell(1,1,':',0,'P');
$x->Cell(3,1,$data['no_peserta'],0,'P');
$x->Ln(0);
$x->Cell(4,2,'Nama Calon Siswa',0,'P');
$x->Cell(1,2,':',0,'P');
$x->Cell(4,2,$data['name'],0,'P');
$x->Cell(3,2,'L/P',0,'P');
$x->Ln(0);
$x->Cell(4,3,'Sekolah Asal',0,'P');
$x->Cell(1,3,':',0,'P');
$x->Cell(4,3,$data['asal_smp'],0,'P');
$x->Ln(1.5);
$x->SetFont('Times','B',12);
$x->Cell(13,4,'',0,'P');
$x->Cell(2,4,'TTD',0,'P');
$x->Ln(1.5);
$x->Cell(12,4,'',0,'P');
$x->Cell(2,4,'  Panitia PPDB ',0,'P');
$x->Ln(1.2);
$x->Cell(0,5,'----------------------------------------------------------------------------------------------------------------------------------------',0,'P');

$x->Ln(3);
head_print($x);
$x->MultiCell(10,1.5,'TANDA BUKTI PEMBAYARAN PPDB',0,'P');
$x->SetX(7.5);
$x->MultiCell(10,0,'Tahun Pelajaran 2016/2017',0,'P');
$x->Ln(1);
$x->SetFont('Times','',11);
$x->Cell(4,1,'Nomor Pendaftaran',0,'P');
$x->Cell(1,1,':',0,'P');
$x->Cell(3,1,$data['no_peserta'],0,'P');
$x->Cell(3,1,'',0,'P');
$x->Cell(8,1,'Rp95.000,-',1,'P');
$x->Ln(0);
$x->Cell(4,2,'Nama Calon Siswa',0,'P');
$x->Cell(1,2,':',0,'P');
$x->Cell(4,2,$data['name'],0,'P');
$x->Cell(3,2,'L/P',0,'P');
$x->Ln(0);
$x->Cell(4,3,'Sekolah Asal',0,'P');
$x->Cell(1,3,':',0,'P');
$x->Cell(4,3,$data['asal_smp'],0,'P');
$x->Ln(1.2);
$x->Cell(5,3,'',0,'P');
$x->Cell(6,2,'',0,'P');
$x->SetFont('Times','I',11);
$x->Cell(8,1,'Terbilang : Sembilan puluh lima ribu rupiah',1,'P');
$x->Ln(0);
$x->SetFont('Times','B',12);
$x->Cell(13,4,'',0,'P');
$x->Cell(2,4,'Bendahara',0,'P');
$x->Ln(1.67);
$x->Cell(12,4,'',0,'P');
$x->Cell(2,4,'       Rosnanti, S.Pd',0,'P');

$x->Output();
?>