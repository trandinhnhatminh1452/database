<?php
include "../../../../database.php";

 add_DB("_flms.stadiums", ["stadium_name", "location", "capacity"], [
        $_POST["Stadium"],  
        $_POST["Location"],
        $_POST["Capacity"]
    ]);
add_DB("_flms.teams", ["stadium_name","club_code", "club_name"], [
    $_POST["Stadium"],
    $_POST["Club_code"],  
    $_POST["Name"], 
]);

header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Teams");

?>