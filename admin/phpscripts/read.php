<?php
    function getAll($tbl) {
        include('connect.php');
        $queryAll = "SELECT * FROM {$tbl}";
        $runAll = mysqli_query($link, $queryAll);
        if ($runAll) {
            return $runAll;
        } else {
            $error = "There was a problem accessing the server.";
            return $error;
        }

        mysqli_close($link);
    }

    function getSingleMov($tbl, $col, $id) {
        include('connect.php');
    $querySingle = "SELECT * FROM {$tbl} WHERE {$col} = {$id}";

    $runsingle = mysqli_query($link, $querySingle);

    if($runSingle){
        return $runSingle;
        } else {
        $error = "There was a problem accessing the server.";
        return $error;
    }

    mysqli_close($link);
}



?>