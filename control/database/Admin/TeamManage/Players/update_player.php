<?php
include "../../../../database.php";

 update_DB("_flms.players", ["player_name", "position", "date_of_birth"], [
    $_POST["Name"],  
    $_POST["Position"], 
    $_POST["DOB"]
],["player_id"],[$_POST["ID"]]);

    update_DB("_flms.player_team", ["club_name", "begin", "\"end\"", "shirt_number"], [
        $_POST["Club"],  
        $_POST["Begin_Date"],
        $_POST["End_Date"],
        $_POST["Shirt_No"]
    ],["player_id"],[$_POST["ID"]]);
header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Players");

?>