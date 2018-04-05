<?php
    require_once('admin/phpscripts/config.php');
    if(isset($_GET['filter'])){
		$tbl1 = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col1 = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = $_GET['filter'];
		$getMovies = filterType();

    }else{
    $tbl = "tbl_movies";
    $getMovies = getAll($tbl);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Video App CMS</title>
</head>
<body>
    <?php
        if(!is_string($getMovies)){
            while($row = mysqli_fetch_array($getMovies)){
				echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
				<h2>{$row['movies_title']}</h2>
				<p>{$row['movies_year']}</p>
				<a href=\"details.php?id={$row['movies_id']}\">See Details</a><br><br>";
            }
            
        } else {
            echo "<p class=\"error\">{$getMovies}</p>";
        }
    ?>
    <?php 
        include('includes/footer.html');
    ?>
    
</body>
</html>