<?php 
//This php file is called by LoginActivity, takes email and password as parameters and returns Id and email
// if exists in the users table

if($_SERVER['REQUEST_METHOD']=='POST'){
 
	$username = $_POST['username'];
	$password = $_POST['password'];
	$password_hash = sha1($password);

	require_once('dbConnect.php');

	$sql = "SELECT * FROM user WHERE username='".$username."'AND password='".$password_hash."';";
	$r = mysqli_query($con,$sql);

	$res = mysqli_fetch_array($r);
	$result = array();
	array_push($result,array(
	"username"=>$res['username'],
	"name"=>$res['name'],
	"ph_no"=>$res['ph_no'],
	"email"=>$res['email']
	)
	);



	if(!empty($res)){
	echo json_encode(array("result"=>$result));
	}else{
		echo "failure";
	}

	mysqli_close($con);
}

?>
