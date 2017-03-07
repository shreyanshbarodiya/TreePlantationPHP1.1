<?php 

if($_SERVER['REQUEST_METHOD']=='POST'){
 
	$tree_id = $_POST['tree_id'];

	require_once('dbConnect.php');

	$sql = "SELECT * FROM tree WHERE tree_id='".$tree_id."';";
	$r = mysqli_query($con,$sql);

	$result = array();

	while($res = mysqli_fetch_array($r)){
		array_push($result,array(
			"tree_id"=>$res['tree_id'],
			"username"=>$res['username'],
			"latitude"=>$res['latitude'],
			"longitude"=>$res['longitude'],
			"planted_on"=>$res['planted_on'],
			"species"=>$res['species']		
		)
	);
	}



	if(!empty($result)){
		echo json_encode(array("result"=>$result));
	}else{
		echo "failure";
	}

	mysqli_close($con);
}

?>
