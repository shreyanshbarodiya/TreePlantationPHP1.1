<?php 
//importing required files 
require_once 'DbOperation.php';
require_once 'Firebase.php';
require_once 'Push.php'; 

$db = new DbOperation();

$response = array(); 

if($_SERVER['REQUEST_METHOD']=='POST'){	
	//hecking the required params 
	if(isset($_POST['title']) and isset($_POST['message']) and isset($_POST['tree_id'])) {
		
		//creating a new push
		$push = null; 
		$title = $_POST['title'];
		$message = $_POST['message'];
		$tree_id = $_POST['tree_id'];


		//first check if the push has an image with it
		if(isset($_POST['image'])){
			$image = $_POST['image'];
			$push = new Push(
					$title,
					$message,
					$image
				);
		}else{
			//if the push don't have an image give null in place of image
			$push = new Push(
					$title,
					$message,
					null
				);
		}


		//getting the push from push object
		$mPushNotification = $push->getPush(); 

		//getting the tokens from database object  
		$devicetoken = $db->getAllTokensOfTreeOwner($tree_id);

		//creating firebase class object 
		$firebase = new Firebase(); 

		echo $firebase->send($devicetoken, $mPushNotification);
		
	}else{
		$response['error']=true;
		$response['message']='Parameters missing';
	}
}else{
	$response['error']=true;
	$response['message']='Invalid request';
}

echo json_encode($response);