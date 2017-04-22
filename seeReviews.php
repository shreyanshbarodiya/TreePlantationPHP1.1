<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php');

	$tree_id = $_POST['tree_id'];

	$sql = "SELECT * FROM review WHERE tree_id='".$tree_id."' ORDER BY reviewed_on;";


	if($r = mysqli_query($con,$sql)){
		$result = array();

		while($row = mysqli_fetch_array($r)){
			array_push($result,array(
				"tree_id"=>$row['tree_id'],
				"review_no"=>$row['review_no'],
				"review_text"=>$row['review_text'],
				"username"=>$row['reviewed_by'],
				"reviewed_on"=>$row['reviewed_on'],
				"review_stars"=>$row['review_stars'],
				"title"=>$row['title']
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
