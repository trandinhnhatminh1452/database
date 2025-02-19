<?php 
if($_GET['mod']=='index'){
    include "RefManage/index.php";
}else if($_GET['mod']=='refList'){
    include "RefManage/refList.php";
}else if($_GET['mod']=='schedule'){
    include "RefManage/schedule.php";
}

?>