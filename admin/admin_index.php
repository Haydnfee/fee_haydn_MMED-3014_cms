<?php 

require_once('phpscripts/config.php');
confirm_logged_on();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Home</title>
    <link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <h1>Admin Menu</h1>
    
    <a href="admin_createuser.php">Create a User Account</a>
    <a href="admin_editUser.php">Edit User</a>
	<a href="admin_deleteUser.php">Delete User</a>		
	<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
</body>
</html>