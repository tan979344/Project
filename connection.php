<?php
	$server 	= "localhost";
	$username 	= "root";
	$password	= "";
	$database 	= "curtain_iot_0224";
	
	$con = mysqli_connect($server, $username, $password, $database);
	mysqli_set_charset($con,"utf8");
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
?>