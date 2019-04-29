<?php
require_once '../fpdf.php';
require_once '../../../functions/init.php';

$query = "SELECT * FROM product ";
$exec = mysqli_query($link, $query) or die (mysqli_error($exec));
while ($x = mysqli_fetch_array($exec)){


$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(40,10, $x['name']);
$pdf->Output();
}
?>