<?php
include "../../../../database.php";

 add_DB("_flms.matches", ["matchweek", "match_id", "match_time","home_ticket"], [
        $_POST["MatchWeek"],  
        $_POST["Match_ID"],
        $_POST["Time"],
        $_POST["Ticket"]
    ]);
add_DB("_flms.team_match", ["match_id","club_name", "home_away"], [
    $_POST["Match_ID"],
    $_POST["Club_1"],  
    $_POST["H_A"], 
]);
$_H_A2 = $_POST["H_A"] == "home"?"away": "home";
add_DB("_flms.team_match", ["match_id","club_name", "home_away"], [
    $_POST["Match_ID"],
    $_POST["Club_2"],  
    $_H_A2, 
]);

header("location: ../../../../index.php?page=admin&mod=FixtureManage&option=Squad");

?>