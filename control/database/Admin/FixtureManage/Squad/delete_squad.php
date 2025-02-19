<?php
include "../../../../database.php";

delete_DB("_flms.team_match", [ "match_id"], [ 
        $_POST["Match_ID"]
    ]);
delete_DB("_flms.matches", [ "match_id"], [ 
        $_POST["Match_ID"]
    ]);
    

header("location: ../../../../index.php?page=admin&mod=FixtureManage&option=Squad");

?>