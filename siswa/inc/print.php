<title>
	Data PPDB Online SMKN 1 Kedawung
</title>
<?php

require_once '../function/main.php';
require_once '../assets/fpdf/fpdf.php';
$id_user = @$_SESSION['student']['id_user'];

$x = new FPDF ("P", "cm", "A4");

$x->SetMargins(1, 1, 1);
$x->AliasNbPages();
$x->AddPage();
//untuk menampilkan gambar
$x->Image('../img/kh.png');
$x->SetFont('Arial','B',15);
$x->SetX(6.5);
$x->MultiCell(10,1.5,'LAPORAN PESERTA DIDIK BARU',0,'P');

$exec_bio = print_data($id_user);
$exec_ortu = get_ortu($id_user);
$exec_nilai = get_nilai($id_user);

$x->Ln(0);
$x->SetFont('Arial','B',13);
$x->Cell(1,1,'I. BIODATA CALON SISWA',0,'P');

while ($data = mysqli_fetch_assoc($exec_bio)) {
	//batas kolom 1
	$x->Ln(1);
	$x->SetFont('Arial','B',10);
	$x->Cell(6,1,'Nama Legkap',0,'P');
	$x->Cell(1,1,':',0,'P');
	$x->Cell(1,1,$data['name'],0,'P');
	//batas kolom 2
	$x->Ln(0);
	$x->Cell(6,2,'Nomor Induk Siswa Nasional',0,'P');
	$x->Cell(1,2,':',0,'P');
	$x->Cell(1,2,$data['nisn'],0,'P');
	//batas kolom 3
	$x->Ln(0);
	$x->Cell(6,3,'Tempat, Tanggal Lahir',0,'P');
	$x->Cell(1,3,':',0,'P');
	$x->Cell(1,3,$data['tmp_lahir'].', '.$data['tgl_lahir'],0,'P');
	//batas kolom 4
	$x->Ln(0);
	$x->Cell(6,4,'Jenis Kelamin',0,'P');
	$x->Cell(1,4,':',0,'P');
	$x->Cell(1,4,$data['jk'],0,'P');
	//batas kolom 5
	$x->Ln(0);
	$x->Cell(6,5,'Agama',0,'P');
	$x->Cell(1,5,':',0,'P');
	$x->Cell(1,5,$data['agama'],0,'P');
	//batas kolom 6
	$x->Ln(0);
	$x->Cell(6,6,'Nomor HP',0,'P');
	$x->Cell(1,6,':',0,'P');
	$x->Cell(1,6,$data['no_hp'],0,'P');
	//batas kolom 7
	$x->Ln(0);
	$x->Cell(6,7,'Asal SMP',0,'P');
	$x->Cell(1,7,':',0,'P');
	$x->Cell(1,7,$data['asal_smp'],0,'P');
	//batas kolom 8
	$x->Ln(0);
	$x->Cell(6,8,'Alamat',0,'P');
	$x->Cell(1,8,':',0,'P');
	$x->Cell(1,8,$data['alamat'],0,'P');
}

$x->Ln(0.5);
$x->SetFont('Arial','B',13);
$x->Cell(1,10,'II. DATA ORANG TUA/WALI CALON SISWA',0,'P');

while ($ortu = mysqli_fetch_assoc($exec_ortu)) {
	$x->Ln(1.5);
	$x->SetFont('Arial','B',10);
	$x->Cell(6,9,'Nama Ayah',0,'P');
	$x->Cell(1,9,':',0,'P');
	$x->Cell(1,9,$ortu['nama_ayah'],0,'P');
	$x->Ln(0);
	$x->Cell(6,10,'Pekerjaan Ayah',0,'P');
	$x->Cell(1,10,':',0,'P');
	$x->Cell(1,10,$ortu['pkrjn_ayah'],0,'P');
	$x->Ln(0);
	$x->Cell(6,11,'Nama Ibu',0,'P');
	$x->Cell(1,11,':',0,'P');
	$x->Cell(1,11,$ortu['nama_ibu'],0,'P');
	$x->Ln(0);
	$x->Cell(6,12,'Pekerjaan Ibu',0,'P');
	$x->Cell(1,12,':',0,'P');
	$x->Cell(1,12,$ortu['pkrjn_ibu'],0,'P');
	$x->Ln(0);
	$x->Cell(6,13,'No. Hp Ayah/Ibu',0,'P');
	$x->Cell(1,13,':',0,'P');
	$x->Cell(1,13,$ortu['no_hp_ortu'],0,'P');
	$x->Ln(0);
	$x->Cell(6,14,'Alamat Ayah/Ibu',0,'P');
	$x->Cell(1,14,':',0,'P');
	$x->Cell(1,14,$ortu['alamat_ortu'],0,'P');
}

$x->Ln(1);
$x->SetFont('Arial','B',13);
$x->Cell(1,15,'III. DATA NILAI CALON SISWA',0,'P');

$x->Ln(8.2);
$x->SetFont('Arial','',11);
$x->Cell(2,1,'No.',1,0,'C');
$x->Cell(8,1,'Mata Pelajaran',1,0,'C');
$x->Cell(8,1,'Nilai',1,0,'C');

while ($nli = mysqli_fetch_assoc($exec_nilai)){
	$x->Ln(1);
	$x->Cell(2,1,'1',1,0,'C');
	$x->Cell(8,1,'B. Indonesia',1,0,'C');
	$x->Cell(8,1,$nli['bindo'],1,0,'C');
	$x->Ln(1);
	$x->Cell(2,1,'2',1,0,'C');
	$x->Cell(8,1,'Ilmu Pengetahuan Alam',1,0,'C');
	$x->Cell(8,1,$nli['ipa'],1,0,'C');
	$x->Ln(1);
	$x->Cell(2,1,'3',1,0,'C');
	$x->Cell(8,1,'Matematika',1,0,'C');
	$x->Cell(8,1,$nli['mtk'],1,0,'C');
	$x->Ln(1);
	$x->Cell(2,1,'4',1,0,'C');
	$x->Cell(8,1,'Bahasa Inggris',1,0,'C');
	$x->Cell(8,1,$nli['binggris'],1,0,'C');
	$x->Ln(1);
	$x->Cell(2,1,'5',1,0,'C');
	$x->Cell(8,1,'NEM',1,0,'C');
	$x->Cell(8,1,$nli['nem'],1,0,'C');


	$x->Ln(1.5);
	$x->SetFont('Arial','B',12);
	$x->Cell(1,2,'IV. DATA PRODI CALON SISWA',0,'P');

	$x->Ln(1);
	$x->SetFont('Arial','B',10);
	$x->Cell(3,1,'Pilihan ke-1',0,'P');
	$x->Cell(3,1,':',0,'P');
	$x->Cell(3,1,$nli['pilihan_1'],0,'P');

	$x->Ln(0.5);
	$x->Cell(3,1,'Pilihan ke-2',0,'P');
	$x->Cell(3,1,':',0,'P');
	$x->Cell(3,1,$nli['pilihan_2'],0,'P');
}

$x->Output('Bukti_Laporan_'.$_SESSION['student']['name'].'.pdf', "I");
?>