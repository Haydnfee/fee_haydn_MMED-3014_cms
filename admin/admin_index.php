<?php

require_once('phpscripts/config.php');  
confirm_logged_in();

?>

<DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Home Page</title>
    <link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <h1>Admin Home</h1>
        <!-- <?php 
        
        echo "<h2>Welcome {$_SESSION['user_name']}</h2>";
        
        $date = date("d-m-y")." at ".date("h:i:sa");

        $updatedate = "UPDATE tbl_user 
        SET user_lastLogin = '$date'
        WHERE user_id={$_SESSION['user_id']}";

        $updatequery = mysqli_query($link, $updatestring);
        
        ?> -->
        <div id="homeNav">
        <a href="admin_createuser.php">Create a User Account</a>
        <a href="admin_editUser.php">Edit User</a>
		<a href="admin_deleteUser.php">Delete User</a>	
        <a href="admin_addMovie.php">Add Movie</a>	
		<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
        </div>
</body>
</html>