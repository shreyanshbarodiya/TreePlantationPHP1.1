<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php');

	$username = $_POST['username'];
	$tree_id = $_POST['tree_id'];
	$review_text = $_POST['review_text'];
	$reviewed_on = $_POST['reviewed_on'];
	$title = $_POST['title'];
	
	$review_query = "SELECT count(review_no) as count_reviews FROM review WHERE tree_id='".$tree_id."';";

	if($result = mysqli_query($con, $review_query)){
		$row = mysqli_fetch_assoc($result);
		$review_no = $row["count_reviews"] + 1;

		$sql = "INSERT INTO review (tree_id,review_no,review_text,reviewed_by,reviewed_on,title)
			VALUES ('$tree_id','$review_no','$review_text','$username','$reviewed_on','$title');";

		if (mysqli_query($con, $sql)) {
			echo "Success" ;
		} 
		else {
			echo mysqli_error($con)  ;
		}
	}else{
		echo mysqli_error($con);
	}
	mysqli_close($con);
}else{	
		echo "Error";		
}
?> 
