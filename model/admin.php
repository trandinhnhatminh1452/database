<?php 
if($_GET['mod']=='index'){
    include "Admin/index.php";
}else if($_GET['mod']=='TeamManage'){
    if($_GET['option']=='Coaches'){
        include "Admin/TeamManage/coaches.php";
    }else if($_GET['option']=='Players'){
        include "Admin/TeamManage/players.php";
    }else if($_GET['option']=='Teams'){
        include "Admin/TeamManage/teams.php";
    }
}else if($_GET['mod']=='FixtureManage'){
    if($_GET['option']=='Matches'){
        include "Admin/FixtureManage/matches.php";
    }else if($_GET['option']=='Referees'){
        include "Admin/FixtureManage/referees.php";
    }else if($_GET['option']=='Squad'){
        include "Admin/FixtureManage/squad.php";
    }
}
?>