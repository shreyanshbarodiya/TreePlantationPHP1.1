<?php
 
 if($_SERVER['REQUEST_METHOD']=='POST'){

	require_once('dbConnect.php');

	$username = $_POST['username'];
	$tree_id = $_POST['tree_id'];
	$number_image = $_POST['no_images'];
	$date = $_POST['clicked_on'];
	$server_path = $_POST['server'];

	$directory_query = "SELECT count(directory_id) as dir_count FROM directory WHERE tree_id='".$tree_id."';";

	if($result = mysqli_query($con, $directory_query)){
		$row = mysqli_fetch_assoc($result);
		$directory_id = $row["dir_count"] + 1;

		$create_directory_query = "INSERT INTO directory (tree_id,directory_id,uploaded_by,clicked_on)
			VALUES ('$tree_id','$directory_id','$username','$date');";

		if (mysqli_query($con, $create_directory_query)) {

			for($i=0; $i<$number_image ; $i=$i+1 ){
				$path = "uploads/$tree_id-$directory_id-$i.jpg";
 
				$imagestring = $_POST['image_number'.$i];

				$decoded = base64_decode($imagestring);
				
				// $actualpath = "$server_path"."$path";
				$actualpath = "$path";

				if(file_put_contents($path,$decoded)){
					$image_upload_query = "INSERT INTO image (tree_id, directory_id, image_url) VALUES ('$tree_id', '$directory_id', '$actualpath' );";

					if(mysqli_query($con,$image_upload_query)){
						echo "$number_image"; 
					}else{
						echo "insert into image error";
					}
				}
				else{
					echo "file_put_contents error";			
				}
			}
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
