<?php

require_once('phpscripts/config.php');
confirm_logged_in();
$id = $_SESSION['movie_id'];

$tbl = "tbl_movies";
$col = "movie_id";
$popForm = getSingle($tbl, $col, $id);
$found_movie = mysqli_fetch_array($popForm, MYSQLI_ASSOC);

if(isset($_POST['submit'])) {
    $title = trim($_POST['title']);
	$year = trim($_POST['year']);
	$runtime = trim($_POST['runtime']);
	$desc = trim($_POST['desc']);
	$cover = trim($_POST['cover']);
	$cover = trim($_POST['cover']);
	$release = trim($_POST['release']);
	$rating = trim($_POST['rating']);
    
		$result = editUser($id, $title, $year, $runtime, $desc, $cover, $release, $rating);
		$message = $result;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CMS Edit User</title>
	<link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <h1>Edit an Existing Entry</h1>
    <?php if(!empty($message)){echo $message;} ?>
		<form action="admin_editMovie.php" method="post">
		<label>Title:</label>
		<input type="text" name="title" value="<?php echo $found_movie['movie_title']; ?>"><br><br>
		<label>Year:</label>
		<input type="text" name="year" value="<?php echo $found_movie['movie_year']; ?>"><br><br>
		<label>Runtime:</label>
		<input type="text" name="runtime" value="<?php echo $found_movie['movie_runtime']; ?>"><br><br>
		<label>Description:</label>
		<input type="text" name="desc" value="<?php echo $found_movie['movie_desc']; ?>"><br><br>
		<label>Cover:</label>
		<input type="text" name="cover" value="<?php echo $found_movie['movie_cover']; ?>"><br><br>
		<label>Release Date:</label>
		<input type="text" name="release" value="<?php echo $found_movie['movie_release']; ?>"><br><br>
		<label>Movie Rating:</label>
		<input type="text" name="rating" value="<?php echo $found_movie['movie_rating']; ?>"><br><br>
		<input type="submit" name="submit" value="Edit Entry">		

	</form>
    
</body>
</html>