<?php 

if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php'); 

	$Latitude = $_POST['latitude'];
	$Longitude = $_POST['longitude'];

	//within 2 meters of range approx
	$hLat = $Latitude + 0.01;
	$lLat = $Latitude - 0.01;
	$hLon = $Longitude + 0.01;
	$lLon = $Longitude - 0.01;


	$sql = "SELECT *
		FROM tree WHERE latitude BETWEEN $lLat AND $hLat AND longitude BETWEEN $lLon AND $hLon;";

	if($r = mysqli_query($con,$sql)){
		$result = array();

		while($row = mysqli_fetch_array($r)){
			array_push($result,array(
				"tree_id"=>$row['tree_id'],
				"username"=>$row['username'],
				"latitude"=>$row['latitude'],
				"longitude"=>$row['longitude'],
				"planted_on"=>$row['planted_on'],
				"species"=>$row['species']
			)
		);
		}

		if(!empty($result)){
			echo json_encode(array("result"=>$result));
		}else{
			echo "failure";
		}
	}else{
		echo "failure";
	}


	mysqli_close($con);
}
?>