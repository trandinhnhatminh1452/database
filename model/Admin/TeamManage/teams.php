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
    <link rel="stylesheet" href="../view/Admin/TeamManage/teams.css">
</head>
<body>
    <div>
    <?php 
    $query="SELECT t.club_code as \"Club Code\",
    t.club_name as \"Club\",
    s.stadium_name as \"Stadium\",
    s.location as \"Location\",
    s.capacity as \"Capacity\"
    FROM _flms.teams t join _flms.stadiums s on t.stadium_name = s.stadium_name
    ORDER BY club_name ASC" ;
    fetchTableData($query);
    
    ?>   
     <div class="control">
        <?php
        get_btn("Add Team");
        get_btn("Delete Team");
    ?>
    </div> 
</div>
<?php
get_form("database/Admin/TeamManage/Teams/add_team.php","Add",["Club Code","Name","Stadium","Location","Capacity"],["text","text","text","text","number"],["Club_code","Name","Stadium","Location","Capacity"]);
get_form("database/Admin/TeamManage/Teams/delete_team.php","Delete",["Name"],["text"],["Name"]);
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