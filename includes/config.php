<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("Europe/Bucharest");

	$con = mysqli_connect("localhost","spotify","password","spotify");

	if(mysqli_connect_errno()){
		echo "Faild to connect: " . mysqli_connect_errno();
	}

?>