<?php
    require_once('admin/phpscripts/config.php');
    if(isset($_GET['id'])) {
        $tbl = "tbl_movies";
        $col = "movie_id";
        $id = $_GET['id'];
        $getSingleMov($tbl, $col, $id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Movie Details</title>
    <link href="css/app.css" rel="stylesheet" type="text/css" media="screen">

</head>
<body>
 <?php
    if(!is_string($getSingleMov)) {
        $row = mysqli_fetch_array($getSingleMov);
        echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<h2>{$row['movies_title']}</h2>
			<p>{$row['movies_year']}</p>
			<p>{$row['movies_storyline']}</p>
			<a href= \"index.php\">Return</a>";
        }else{
            echo "<p>{$getMovie}</p>";
            $runFilter = mysqli_query($link, $queryFilter);

            if($runFilter){
                return $runFilter;
            }else{
                $error "There was an error while fetching the movie information";
                return $error;
            }
        }
 
 ?>
</body>
</html>