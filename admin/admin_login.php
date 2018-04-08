<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	$ip = $_SERVER['REMOTE_ADDR'];
	if(isset($_POST['submit'])) {
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== "") {
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill in all required fields";
		}
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Login Portal</title>
    <link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <h1>Admin Login</h1>
    <form action="admin_login.php" method="post">
        <lable>Username:</label>
        <input type="text" name="username" value="">
        <br>
        <lable>Password:</label>
        <input type="text" name="password" value="">
        <br>
        <input id="logBTN" type="submit" name="submit" value="User Login">
    </form>
</body>
</html>