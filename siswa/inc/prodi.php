	<div class="formular">
		<h4>Pilihan Prodi</h4>
		<br>
		<form action="" class="form-group">
		<?php
			for($i=1; $i<=7; $i++){
		?>
			<div class="col-md-2">
				<label for="prodi">Pilihan ke-<?= $i; ?></label>
				<br>
			</div>
			<div class="col-md-10">
				<select name="prodi_<?= $i; ?>" class="form-control">
					<option value="">-- Pilih Prodi --</option>
					<option value="Akuntansi">Akuntansi</option>
					<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
					<option value="Multimedia">Multimedia</option>
					<option value="Pemasaran">Pemasaran</option>
					<option value="Perbankan">Perbankan</option>
					<option value="Rekayasa Perangkat Lunak">Rekayasa Perangkat Lunak</option>
					<option value="Teknik Komputer & Jaringan">Teknik Komputer & Jaringan</option>
					<option value="Teknik Sepeda Motor">Teknik Sepeda Motor</option>
					<option value="Usaha Perjalanan Wisata">Usaha Perjalanan Wisata</option>
				</select>
				<br>
			</div>
			<?php } ?>
			<div class="col-md-4 col-md-offset-2">
				<input type="submit" name="simpan" value="Simpan" class="btn-primary form-control">
			</div>
		</form>
	</div>