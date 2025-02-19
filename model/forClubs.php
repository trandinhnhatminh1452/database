<?php 
if($_GET['mod']=='index'){
    include "TeamManage/index.php";
}else if($_GET['mod']=='players'){
    include "TeamManage/players.php";
}else if($_GET['mod']=='coaches'){
    include "TeamManage/coaches.php";
}else if($_GET['mod']=='squad_submid'){
    include "TeamManage/squad_submid.php";
}
?>