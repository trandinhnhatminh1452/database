<?php
    include "../database.php";

    $role =  fetchValueFromDB("_flms.account","role",["username","password"],[$_GET["user"],$_GET["pass"]]);
    
    if($role != ''){
        session_start(); // Bắt đầu session
        
        $_SESSION["username"] = $_GET["user"];
        $_SESSION["role"] = $role;
        header("location: ../index.php");
    }
    else{
        header("location: ../Login.php?mess=smk");
    }
?>