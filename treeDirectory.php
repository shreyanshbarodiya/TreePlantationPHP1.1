<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php');

	$tree_id = $_POST['tree_id'];

	$sql = "SELECT * FROM directory WHERE tree_id='".$tree_id."' ORDER BY clicked_on;";


	if($r = mysqli_query($con,$sql)){
		$result = array();

		while($row = mysqli_fetch_array($r)){
			array_push($result,array(
				"directory"=>$row['directory_id'],
				"uploaded_by"=>$row['uploaded_by'],
				"clicked_on"=>$row['clicked_on']
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

}else{	
		echo "Error";		
}
?> 
