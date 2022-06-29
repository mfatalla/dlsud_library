<?php
include('session.php');

 include ('include/dbcon.php');

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
			<center><p style = "margin-left:30px; margin-top:50px; font-size:14pt; font-weight:bold;">Borrowed Reports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></center>
		<div align="right">
		<b style="color:blue;">Date Prepared:</b>
		<?php include('currentdate.php'); ?>
		<br>
        </div>	

		<br/>
<?php
							$result= mysqli_query($con,"select * from user 
							order by user.school_number DESC ") or die (mysqli_error());
?>
						<table class="table table-striped">
						  <thead>
								<tr>
								<tr>
									<th>Student ID</th>
									<th>Members Name</th>
									<th>Book Title</th>
									<th>Task</th>
									<th>Admin In Charge</th>
									<th>Date Transaction</th>
								</tr>
								</tr>
						  </thead>   
						  <tbody>
                          <?php
							$result= mysqli_query($con,"select * from report 
							LEFT JOIN book ON report.book_id = book.book_id 
							LEFT JOIN user ON report.user_id = user.user_id 
							where detail_action = 'Borrowed Book'
							order by report.report_id DESC ") or die (mysqli_error());
							while ($row= mysqli_fetch_array ($result) ){
							$id=$row['report_id'];
							$book_id=$row['book_id'];
							$user_name=$row['firstname']." ".$row['middlename']." ".$row['lastname'];
							
							?>
							<tr>
								<td style="text-align:center;"><?php echo $row['school_number']; ?></td>
								<td style="text-align:center;"><?php echo $user_name; ?></td> 
								<td style="text-align:center;"><?php echo $row['book_title']; ?></td> 
								<td style="text-align:center;"><?php echo $row['detail_action']; ?></td> 
								<td style="text-align:center;"><?php echo $row['admin_name']; ?></td> 
								<td style="text-align:center;"><?php echo date("M d, Y h:m:s a",strtotime($row['date_transaction'])); ?></td> 

							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
	
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
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