<?php 
//importing required files 
require_once 'DbOperation.php';

$db = new DbOperation();

$response = array(); 

if($_SERVER['REQUEST_METHOD']=='POST'){	
	if(isset($_POST['username']) and isset($_POST['token'])) {
		
		$username = $_POST['username'];
		$token = $_POST['token'];


		//getting the tokens from database object  
		$result = $db->removeDeviceOfUser($username, $token);

		if($result == 0){
			$response['error'] = false;
			$response['message'] = 'Succesfully deleted entry';
		}else{
			$response['error'] = true;
			$response['message'] = 'Cannot delete entry';
		}

		
	}else{
		$response['error']=true;
		$response['message']='Parameters missing';
	}
}else{
	$response['error']=true;
	$response['message']='Invalid request';
}

echo json_encode($response);