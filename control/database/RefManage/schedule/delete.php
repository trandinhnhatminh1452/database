<?php
include "../../../database.php";
delete_DB("_flms.ref_match", ["ref_id", "match_id"], [
    $_POST["ref_id"],  
    $_POST["match_id"] 
]);
header("location: ../../../index.php?page=forRefs&mod=schedule");

?>