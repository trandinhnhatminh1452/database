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
    <link rel="stylesheet" href="../view/forClubs/coaches.css">
</head>
<body>
    <div>
        <div class="club_filter">
            <label for="Club">Club:</label> 
            <?php
                get_option("SELECT club_name FROM _flms.teams
                            ORDER BY club_name ASC ");
            ?>
        </div>

        
        <?php 
        $query = "SELECT 
        ct.club_name AS \"Club Name\",
        c.coach_id AS \"Coach ID\",
        c.coach_name AS \"Name\",
        c.nationality AS \"Nationality\",
        c.date_of_birth AS \"D.O.B\",
        ct.begin AS \"Begin Date\",
        ct.end AS \"End Date\"
    FROM _flms.coaches c
    JOIN _flms.coach_team ct ON c.coach_id = ct.coach_id";
    


        fetchTableData($query);
        ?>

        <div class="control">
            <?php
            get_btn("Add Coach");
            get_btn("Delete Coach");
            get_btn("Update Coach");
            ?>
        </div> 
    </div>

    <?php
    get_form("database/Admin/TeamManage/Coaches/add_coach.php","Add", ["Name","Club", "Nationality", "D.O.B", "Begin Date", "End Date"],["text","text","text","Date","Date","Date"],["Name","Club", "Nationality", "DOB", "Begin_Date", "End_Date"]);
    get_form("database/Admin/TeamManage/Coaches/delete_coach.php","Delete", ["ID"],["number"],["ID"]);
    get_form("database/Admin/TeamManage/Coaches/update_coach.php","Update", ["ID","Name","Club", "Nationality", "D.O.B", "Begin Date", "End Date"],["number","text","text","text","Date","Date","Date"],["ID","Name","Club", "Nationality", "DOB", "Begin_Date", "End_Date"]);
    ?>

    <script>
    document.querySelector(".Add.button").addEventListener("click", e => {
    document.querySelector(".message.delete").style.display = 'none'; 
    document.querySelector(".message.update").style.display = 'none';
    document.querySelector(".message.add").style.display = 'block';   
});

document.querySelector(".Delete.button").addEventListener("click", e => {
    document.querySelector(".message.add").style.display = 'none';    
    document.querySelector(".message.update").style.display = 'none';
    document.querySelector(".message.delete").style.display = 'block'; 
});

document.querySelector(".Update.button").addEventListener("click", e => {
    document.querySelector(".message.add").style.display = 'none';    
    document.querySelector(".message.delete").style.display = 'none';
    document.querySelector(".message.update").style.display = 'block'; 
});

document.querySelector(".message.add .cancel.button").addEventListener("click", e => {
    document.querySelector(".message.add").style.display = 'none';
});

document.querySelector(".message.delete .cancel.button").addEventListener("click", e => {
    document.querySelector(".message.delete").style.display = 'none';
});

document.querySelector(".message.update .cancel.button").addEventListener("click", e => {
    document.querySelector(".message.update").style.display = 'none';
});
    var arr_row = Array.from(document.querySelector(".tableView").children[0].children);

function hidden(e) {
    e.style.display = "none";        
}

function show(e) {
        e.style.display = "";
    }

function check_content(e, text) {
    return e.children[0].textContent.trim() == text;
}

function filter(text) {
        arr_row.forEach((value, index) => {
            if (index === 0) return; // Bỏ qua hàng tiêu đề

            if (!check_content(value, text)) {
                hidden(value);
            } else {
                show(value);
            }
        });
    }

    filter(document.querySelector(".club_filter select").children[0].textContent);
    document.addEventListener("click", e => {
        filter(document.querySelector(".club_filter select").value);
    });
   
    </script>

</body>
</html>
