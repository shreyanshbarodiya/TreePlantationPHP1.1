<?php 
// this php file is called from RegisterUser activity to register a user in the users table.
if($_SERVER['REQUEST_METHOD']=='POST'){

	$username = $_POST['username'];
	$latitude = $_POST['latitude'];
	$longitude = $_POST['longitude'];
	$planted_on = $_POST['planted_on'];
	$species = $_POST['species'];
	$tree_id = $_POST['tree_id'];
	
	$latitude = $latitude + 0.0;
	$longitude = $longitude + 0.0;
	require_once('dbConnect.php');


	$sql = "INSERT INTO tree (tree_id,username,latitude,longitude,planted_on,species)
	VALUES ('$tree_id','$username','$latitude','$longitude','$planted_on','$species');";

	if (mysqli_query($con, $sql)) {
		echo "Success" ;
	} 
	else {
		echo mysqli_error($con)  ;
	}
}

mysqli_close($con);
?> 
