<?php
	include_once "connection.php";
	
	class emp {}
	
	$pin_enable = $_POST['pin_enable'];
	$pin = $_POST['pin'];

	if (empty($pin)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Please fill in all the required fields.";
		die(json_encode($response));
	} else {
		$query = mysqli_query($con, "UPDATE `user` 
		SET `pin_enable`='$pin_enable',`password`='$pin' WHERE `user_id`='1'");
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
