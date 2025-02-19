<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Football League </title>
    <link rel="icon" type="image/png" href="https://imgs.search.brave.com/IoJLS63hyl9kZYKk8ksMKtTJTRz2-XC5tOyGqZSpknU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4t/aWNvbnMtcG5nLmZy/ZWVwaWsuY29tLzI1/Ni8xNTI3LzE1Mjc0/MTUucG5nP3NlbXQ9/YWlzX2h5YnJpZA">
    <link rel="stylesheet" href="../view/index.css">
</head>
<body>
    <div class="title">
        <div class="dropContainer avata">
            <div class="dropContent">
                <div >Information</div>
                <div class="linkLogOut">Log Out</div>
            </div> 
        </div>
        <h1>Football League Management System</h1>
        <div class="model">
            <a href="index.php?page=home">          <button class="model">Home          </button> </a>
            <a href="index.php?page=leagueTable">    <button class="model">League Table  </button> </a>

            <a href="index.php?page=forClubs&mod=index">      <button class="model dropContainer">For Clubs    
            <div class="dropContent">
                <div class="linkPlayer">Players</div>
                <div class="linkCoaches">Coaches</div>
                <div class="linkSquadSubmit">Squad Submit</div>
            </div> 
            </button> </a>

            <a href="index.php?page=forRefs&mod=index" <?php if($_SESSION["role"]=='Club') echo 'style="display:none;"'; ?>>       <button class="model dropContainer">For Refs 
            <div class="dropContent">
                <div class="linkRefereeList">Referee list</div>
                <div class="linkSchedules">Schedules</div>
            </div>     
            </button> </a>

            <a href="index.php?page=admin&mod=index" <?php if($_SESSION["role"]=='Club') echo 'style="display:none;"'; ?>>         <button class="model dropContainer">Admin    
            <div class="dropContent">
                <div class="manage_container">
                    Team Manage
                    <div class = "manage_content">
                        <div class="linkTeamManageTeams">Teams</div>
                        <div class="linkTeamManagePlayers">Players</div>
                        <div class="linkTeamManageCoaches">Coaches</div>
                    </div>
                
                </div>
                
                <div class="manage_container">
                    Fixtures Manage
                    <div class = "manage_content"> 
                        <div class="linkFixturesManageMatches">Matches</div>
                        <div class="linkFixturesManageSquad">Squad</div>
                        <div class="linkFixturesManageReferees">Referees</div>

                    </div>
                       
                </div>
                
            </div>
            </button> </a>

        </div>
    </div>
    <div class="content">
        <?php
            if($_GET['page']=="home"){
                include "../model/home.php";
            } 
            else if($_GET['page']=="leagueTable"){
                include "../model/leagueTable.php";
            }
            else if($_GET['page']=="forClubs"){
                include "../model/forClubs.php";
            }
            else if($_GET['page']=="forRefs"){
                include "../model/forRefs.php";
            }
            else if($_GET['page']=="admin"){
                include "../model/admin.php";
            }
            else{
                header("location: index.php?page=home");
            }
        ?>
    </div>
</body>
<script>
    document.querySelector(".linkPlayer").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=forClubs&mod=players")})
    document.querySelector(".linkCoaches").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=forClubs&mod=coaches")})
    document.querySelector(".linkSquadSubmit").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=forClubs&mod=squad_submid")})
    document.querySelector(".linkRefereeList").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=forRefs&mod=refList")})
    document.querySelector(".linkSchedules").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=forRefs&mod=schedule")})
    document.querySelector(".linkTeamManageTeams").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=TeamManage&option=Teams")})
    document.querySelector(".linkTeamManagePlayers").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=TeamManage&option=Players")})
    document.querySelector(".linkTeamManageCoaches").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=TeamManage&option=Coaches")})
    document.querySelector(".linkFixturesManageMatches").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=FixtureManage&option=Matches")})
    document.querySelector(".linkFixturesManageSquad").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=FixtureManage&option=Squad")})
    document.querySelector(".linkFixturesManageReferees").addEventListener("click",e=>{event.preventDefault();window.location.replace("index.php?page=admin&mod=FixtureManage&option=Referees")})
    document.querySelector(".linkLogOut").addEventListener("click",e=>{event.preventDefault();window.location.replace("logOut.php")})
</script>
</html>