<?php
	require_once('phpscripts/config.php');
	$tbl = "tbl_movies";
	$movs = getAll($tbl);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CMS Delete User</title>
    <link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <h1>Select Entry</h1>
    <div id="editMovie">
    <?php
        while ($row = mysqli_fetch_array($movs)) {
        echo "{$row['movie_title']}<a href='admin_editMovie.php'>Edit Movie</a><br>";
        }
    ?>
    </div>
    
</body>
</html>