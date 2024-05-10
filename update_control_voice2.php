<?php
	include_once "connection.php";
	
	class emp {}
	
	$control_id = $_POST['control_id'];
	$curtain2 = $_POST['curtain2'];
	$status = 0;
	if (empty($control_id)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Please fill in all the required fields.";
		die(json_encode($response));
	} else {
		if($curtain2 > 0) $status = 1;
		$query = mysqli_query($con, "UPDATE `window` 
		SET `level`='$curtain2' , `status`='$status'  WHERE `window_id`='$control_id'");
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "curtain updated successfully.";
			die(json_encode($response));
		} else {
			$response = new emp();
			$response->success = 0;
			$response->message = "Failed to update curtain.";
			die(json_encode($response));
		}
	}

	mysqli_close($con);
?>
