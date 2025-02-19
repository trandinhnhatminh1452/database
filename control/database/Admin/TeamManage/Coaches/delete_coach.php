<?php
include "../../../../database.php";
delete_DB("_flms.coaches", ["coach_id"], [
    $_POST["ID"]  
]);
delete_DB("_flms.coach_team", ["coach_id"], [
    $_POST["ID"]  
]);
header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Coaches");

?>