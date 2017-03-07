<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php');

	$username = $_POST['username'];
	$tree_id = $_POST['tree_id'];
	$date = $_POST['adopted_on'];
	

	$sql = "INSERT INTO adopts (tree_id,adopted_by,adopted_on)
		VALUES ('$tree_id','$username','$date');";

	if (mysqli_query($con, $sql)) {
		echo "Success" ;
	} 
	else {
		echo mysqli_error($con)  ;
	}

	mysqli_close($con);
}else{	
		echo "Error";		
}
?> 
