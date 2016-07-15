<?php
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="test";
	
	// Create connection
	$conn = mysqli_connect($servername, $username, $password) or die("Unable to connect to MySQL");

	//Select Database
	$selected = mysqli_select_db($conn,$dbname) or die("Could not select $dbname");

    mysqli_query($conn, "SET NAMES 'utf8'");
?>