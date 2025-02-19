<?php 
    include "../control/database.php";
    include "../control/tools.php";
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../view/table.css">
    <link rel="stylesheet" href="../view/refList.css">
</head>
<body>
    <div>
    <?php 
    fetchTableData('SELECT ref_id as "ID", ref_name as "Name" FROM _flms.referees');
    
    ?>   
     <div class="control">
        <?php
        get_btn("Add Referee");
        get_btn("Delete Referee");  
    ?>
    </div> 
</div>
<?php
get_form("database/RefManage/refList/add.php","Add",["ID","Name"],["text","text"],["ID","Name"]);
get_form("database/RefManage/refList/delete.php","Delete",["ID"],["text"],["ID"]);
?>
<script>
document.querySelector(".Add.button").addEventListener("click", e => {
    document.querySelector(".message.delete").style.display = 'none'; // Đóng Delete
    document.querySelector(".message.add").style.display = 'block';   // Mở Add
});

document.querySelector(".Delete.button").addEventListener("click", e => {
    document.querySelector(".message.add").style.display = 'none';    // Đóng Add
    document.querySelector(".message.delete").style.display = 'block'; // Mở Delete
});

document.querySelector(".message.add .cancel.button").addEventListener("click", e => {
    document.querySelector(".message.add").style.display = 'none';
});

document.querySelector(".message.delete .cancel.button").addEventListener("click", e => {
    document.querySelector(".message.delete").style.display = 'none';
});

</script>
    
</body>
</html>