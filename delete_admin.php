<?php 

include('include/dbcon.php');

$get_id=$_GET['admin_id'];

mysqli_query($con,"delete from admin where admin_id = '$get_id' ")or die(mysqli_error());

echo "<script>alert('Account successfully deleted!'); window.location='admin.php'</script>";
?>