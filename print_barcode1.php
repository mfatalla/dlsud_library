<?php include ('include/dbcon.php');
include('session.php');
?>
<html>

<head>
		<title>Library Management System</title>
		<link rel="icon" type="image/png" href="images/dlsud_logo.png">
		<style>
		
		
.container {
	width:100%;
	margin:auto;
}
		
.table {
    width: 100%;
    margin-bottom: 20px;
}	

.table-striped tbody > tr:nth-child(odd) > td,
.table-striped tbody > tr:nth-child(odd) > th {
    background-color: #f9f9f9;
}

@media print{
#print {
display:none;
}
}

#print {
	width: 90px;
    height: 30px;
    font-size: 18px;
    background: white;
    border-radius: 4px;
	margin-left:28px;
	cursor:hand;
}
		
		</style>
<script>
function printPage() {
    window.print();
}
</script>
		
</head>


<body>
	<div class = "container">
		<div id = "header">
		<br/>
			<img src = "images/dlsud_logo.png" style = " margin-top:-17px; float:left; margin-left:115px; margin-bottom:-6px; width:100px; height:100px;">
			<img src = "images/aklatan_logo.png" style = " margin-top:-17px; float:right; margin-right:115px; width:100px; height:100px;" >
			<center><h5 style = "font-style:Calibri"></h5>&nbsp; &nbsp;&nbsp; De La Salle University - Dasmariñas &nbsp;	&nbsp; </center>
			<center><h5 style = "font-style:Calibri; margin-top:-14px;"></h5> &nbsp; &nbsp; Aklatang Emilio Aguinaldo</center>
			<center><h5 style = "font-style:Calibri; margin-top:-14px;"></h5> &nbsp; &nbsp; Library Management System</center>
			<center><p style = "margin-left:30px; margin-top:50px; font-size:14pt; font-weight:bold;">Books Barcode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></center>
        <div align="right">
		<b style="color:blue;">Date Prepared:</b>
		<?php include('currentdate.php'); ?>
        </div>			
		<br/>
		<br/>
		<br/>
<?php
							$result= mysqli_query($con,"select * from book 
							LEFT JOIN category ON book.category_id = category.category_id 
							order by book_id DESC") or die (mysqli_error());
?>
						<table class="table">
						  <thead>
								<tr>
									<th>Barcode</th>

									<th>Book Image</th>
									<th>Title</th>
									<th>Author</th>
								</tr>
						  </thead>  
						  
						  <tbody>
<?php
							 
							while ($row= mysqli_fetch_array ($result) ){
							$id=$row['book_id'];
							
?>							
							
							<tr>
							
								<td style="text-align:center;"><?php echo "<center><img alt='testing' src='barcode.php?codetype=code39&size=50&text="  .$row['book_barcode']."&print=true'/></center>";?></td>
								<td style="text-align:center;"><?php echo "<center><img src='upload/" . $row['book_image'] . "' height='100' width='75'></center>"; ?></td> 
								<td style="text-align:center;"><?php echo $row['book_title']; ?></td>
								<td style="text-align:center;"><?php echo $row['author']; ?></td>
								<?php
	if(ISSET($_POST['generate'])){
		$code=$_POST['barcode'];
		
	}
?>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							
							<?php 
							}					
							?>
						  </tbody> 
					  </table> 

<br />
<br />
							<?php
								include('include/dbcon.php');
								
								$user_query=mysqli_query($con,"select * from admin where admin_id='$id_session'")or die(mysqli_error());
								$row=mysqli_fetch_array($user_query); {
							?>        <h2><i class="glyphicon glyphicon-user"></i> <?php echo '<span style="color:blue; font-size:15px;">Prepared by:'."<br /><br /> ".$row['firstname']." ".$row['lastname']." ".'[ADMIN]'." ".'</span>';?></h2>
								<?php } ?>

							<div align="right">
								<br>
								<button type="submit" id="print" onclick="printPage()">Print</button>	
							</div>


			</div>
	
	
	
	

	</div>
</body>


</html>