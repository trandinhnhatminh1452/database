<?php
include "../../../database.php";
delete_DB("_flms.players", ["player_id"], [
    $_POST["ID"]  
]);
delete_DB("_flms.player_team", ["player_id"], [
    $_POST["ID"]  
]);
header("location: ../../../index.php?page=forClubs&mod=players");

?>