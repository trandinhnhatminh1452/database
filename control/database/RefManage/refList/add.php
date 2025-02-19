<?php
include "../../../database.php";

 add_DB("_flms.referees", ["ref_id", "ref_name"], [
    $_POST["ID"],  
    $_POST["Name"], 
]);

header("location: ../../../index.php?page=forRefs&mod=refList");
?>