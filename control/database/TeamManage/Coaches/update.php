<?php
include "../../../database.php";

 update_DB("_flms.coaches", ["coach_name", "nationality", "date_of_birth"], [
    $_POST["Name"],  
    $_POST["Nationality"], 
    $_POST["DOB"]
],["coach_id"],[$_POST["ID"]]);

    update_DB("_flms.coach_team", [ "club_name", "begin", "\"end\""], [
        $_POST["Club"],  
        $_POST["Begin_Date"],
        $_POST["End_Date"]
    ],["coach_id"],[$_POST["ID"]]);
header("location: ../../../index.php?page=forClubs&mod=coaches");

?>