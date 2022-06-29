<?php
	if(ISSET($_POST['generate'])){
		$code=$_POST['barcode'];
		echo "<center><img alt='testing' src='barcode.php?codetype=code39&size=50&text=".$code."&print=true'/></center>";
	}
?>