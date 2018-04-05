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
    
</body>
</html>