<?php
// this php file is called from RegisterUser activity to register a user in the users table.
if($_SERVER['REQUEST_METHOD']=='POST'){

	$username = $_POST['username'];
	$name = $_POST['name'];
	$password = $_POST['password'];
	$phone = $_POST['ph_no'];
	$email = $_POST['email'];
	$password_hash = sha1($password);

	require_once('dbConnect.php');


	$sql = "INSERT INTO user (username,name,password,email,ph_no)
	VALUES ('$username','$name','$password_hash','$email','$phone');";



	if (mysqli_query($con, $sql)) {
		echo "Success" ;
	} 
	else {
		echo mysqli_error($con)  ;
	}
}

mysqli_close($con);
?> 
