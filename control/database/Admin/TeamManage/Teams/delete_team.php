<?php
include "../../../../database.php";
delete_DB("_flms.teams", ["club_name"], [
    $_POST["Name"]  
]);
$stadium = fetchValueFromDB("_flms.teams","stadium_name",["club_name"],[$_POST["Name"]]);
delete_DB("_flms.stadium", ["stadium_name"], [
    $stadium 
]);
header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Teams");

?>