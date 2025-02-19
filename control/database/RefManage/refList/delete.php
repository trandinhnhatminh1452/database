<?php
include "../../../database.php";
delete_DB("_flms.referees", ["ref_id"], [
    $_POST["ID"]  
]);
header("location: ../../../index.php?page=forRefs&mod=refList");

?>