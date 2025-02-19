<?php
include "../../../../database.php";

delete_DB("_flms.player_match", ["player_id", "club_name", "event", "event_half","event_time","match_id"], [
    $_POST["Player_ID"],
    $_POST["Club_name"],  
    $_POST["Event"],  
    $_POST["Event_half"],
    $_POST["Event_time"],
    $_POST['MatchID']
]);


 header("location: ../../../../index.php?page=admin&mod=FixtureManage&option=Matches");

?>