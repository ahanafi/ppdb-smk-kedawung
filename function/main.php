<?php
session_start();
include_once 'assets.html';
include 'connect.php';
include 'queries.php';

function ubahTanggal($tgl){
	$pisah		= explode('/', $tgl);
	$larik		= array($pisah[2], $pisah[1], $pisah[0]);
	$satukan	= implode('-', $larik);

	return $satukan;
}

?>

<script>
	$(document).ready(function(){
		$('#tgl_ijazah').datepick({
			dateFormat: 'yyyy-mm-dd',
			yearRange: 'c-20:c+10',
		});
		$('#inlineDatepicker').datepick({
			onSelect: showDate
		});

		$('#tgl_skhun').datepick({
			dateFormat: 'yyyy-mm-dd',
			yearRange: 'c-20:c+10',
		});
	});
	function showDate(date){
		alert('Tanggal yang dipilih adalah ' + date);
	}
</script>