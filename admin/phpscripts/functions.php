<?php
    function redirect _to ($location) {
        if($locatin != NULL) {
            header("location: {$location}");
            exit;
        }
    }

?>