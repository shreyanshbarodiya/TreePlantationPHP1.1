<?php 
	require_once 'DbOperation.php';
	$response = array(); 

	if($_SERVER['REQUEST_METHOD']=='POST'){

		$token = $_POST['token'];
		$username = $_POST['username'];

		$db = new DbOperation(); 
		$result = $db->registerDevice($username,$token);
		echo "hi";

		if($result == 0){
			$response['error'] = false; 
			$response['message'] = 'Device registered successfully';
		}elseif($result == 2){
			$response['error'] = true; 
			$response['message'] = 'Device already registered';
		}else{
			$response['error'] = true;
			$response['message']='Device not registered';
		}
	}else{
		$response['error']=true;
		$response['message']='Invalid Request...';
	}

	echo json_encode($response);
	//echo "outside hi";