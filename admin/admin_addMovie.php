<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);

require_once('phpscripts/config.php');

$tbl="tbl_genre";
$genQuery = getAll($tbl);

if(isset($_POST['submit'])) {
	$title = $_POST['title'];
	$year = $_POST['year'];
	$runtime = $_POST['runtime'];
    $story = $_POST['storyline'];
    $cover = $_FILES['cover'];
	$release = $_POST['release'];
	$genre = $_POST['genList'];
	$uploadMovie = addMovie($title, $year, $runtime, $story, $cover, $release, $genre);
	$message = $uploadMovie;
	}


?>

<doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal</title>
<link href="../css/app.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
	<h1>Add movie to site</h1>
	<?php if (!empty($message)){echo $message;} ?>
	<div id="addMovie">
	<form action="admin_addMovie.php" method="post" enctype="multipart/form-data">
		<label>Movie Title:</label>
		<input type="text" name="title" value=""><br><br>
		<label>Movie Year:</label>
		<input type="text" name="year" value=""><br><br>
		<label>Movie Runtime:</label>
		<input type="text" name="runtime" value=""><br><br>
		<label>Movie StoryLine</label>
		<input type="text" name="storyline" value=""><br><br>
        <label>Movie Cover Image:</label>
		<input type="file" name="cover" value=""><br><br>
		<label>Movie Release:</label>
		<input type="text" name="release" value=""><br><br>
		<select name="genList">
		<option value="">Please Select a Genre</option>

		<?php 
			while($row = mysqli_fetch_array($genQuery)){
				echo "<option value=\"{row['genre_id']}\">{$row['genre_name']}</option>";
		}
		?>

		</select><br><br>
		<input type="submit" name="submit" value="Add Movie">
	</form>
	</div>
</body>
<html>