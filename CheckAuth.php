<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$data = "bolusers";
	
	$connection = mysqli_connect($host,$user,$pass,$data);
	if (mysqli_connect_errno())
		echo "DBE";
	
	$BOLUser = strip_tags(stripslashes(base64_decode ($_GET['user'])));
	$time = $_GET['time'];
	$state = $_GET['state'];
	$dbtime = 0;
	
	$query = mysqli_query($connection,"SELECT AUTHTIME FROM users WHERE NAME='$BOLUser'");
	$count = mysqli_num_rows($query);
	
	if($count == 0)
	{
		$query = mysqli_query($connection,"INSERT INTO users (`ID`, `NAME`, `TRANSACTIONID`, `AUTHTIME`) VALUES (NULL, '$BOLUser', '0', '4320');");
	}
	
	$query = mysqli_query($connection,"SELECT AUTHTIME FROM users WHERE NAME='$BOLUser'");
	while ($row=mysqli_fetch_row($query))
	{
		$dbtime = $row[0];
	}
	
	if($state == 0)
	{
		echo $dbtime;
	}else{
		if($dbtime != 999999)
		{
			$timeedit = $dbtime - $time;
			if($timeedit > 0)
			{
				$query = mysqli_query($connection,"UPDATE users SET AUTHTIME='$timeedit' WHERE NAME='$BOLUser'");
			}else{
				$query = mysqli_query($connection,"UPDATE users SET AUTHTIME=0 WHERE NAME='$BOLUser'");
			}		
		}
	}
?>
