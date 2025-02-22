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
    <link rel="stylesheet" href="../view/forClubs/squad_submid.css">
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
        tm.club_name,
        m.matchweek AS \"MatchWeek\",
        m.match_id AS \"ID\",
        (SELECT club_name FROM _flms.team_match tm2 
         WHERE tm2.match_id = m.match_id AND tm2.club_name <> tm.club_name) 
         AS \"Opponent\",
        tm.home_away AS \"H/A\",
        m.match_time AS \"Time\",
        CASE 
            WHEN tm.home_away = 'home' THEN m.home_ticket 
            ELSE m.away_ticket 
        END AS \"Ticket\"
      FROM _flms.matches m
      JOIN _flms.team_match tm ON m.match_id = tm.match_id
      order by matchweek ASC;";
;


    


        fetchTableData($query);
        ?>

        <div class="control">
            <?php
            // get_btn("Add Coach");
            // get_btn("Delete Coach");
            // get_btn("Update Coach");
            ?>
        </div> 
    </div>

    <?php
    // get_form("database/TeamManage/Squad_submit/add.php","Add", ["MatchWeek","ID", "Opponent", "H/A","Time","Ticket"],["number","text","text","text","time","number"],["MatchWeek","ID", "Opponent", "H/A","Time","Ticket"]);
    // get_form("database/TeamManage/Squad_submit/update.php","Update", ["ID","Name","Club", "Shirt No", "Position", "D.O.B", "Begin Date", "End Date"], ["number","text","text","number","text","Date","Date","Date"],["ID","Name","Club", "Shirt_No", "Position","DOB","Begin_Date","End_Date"]);
    // get_form("database/TeamManage/Squad_submit/delete.php","Delete", ["ID"],["number"],["ID"]);
    ?>

    <script>
//     document.querySelector(".Add.button").addEventListener("click", e => {
//     document.querySelector(".message.delete").style.display = 'none'; 
//     document.querySelector(".message.update").style.display = 'none';
//     document.querySelector(".message.add").style.display = 'block';   
// });

// document.querySelector(".Delete.button").addEventListener("click", e => {
//     document.querySelector(".message.add").style.display = 'none';    
//     document.querySelector(".message.update").style.display = 'none';
//     document.querySelector(".message.delete").style.display = 'block'; 
// });

// document.querySelector(".Update.button").addEventListener("click", e => {
//     document.querySelector(".message.add").style.display = 'none';    
//     document.querySelector(".message.delete").style.display = 'none';
//     document.querySelector(".message.update").style.display = 'block'; 
// });

// document.querySelector(".message.add .cancel.button").addEventListener("click", e => {
//     document.querySelector(".message.add").style.display = 'none';
// });

// document.querySelector(".message.delete .cancel.button").addEventListener("click", e => {
//     document.querySelector(".message.delete").style.display = 'none';
// });

// document.querySelector(".message.update .cancel.button").addEventListener("click", e => {
//     document.querySelector(".message.update").style.display = 'none';
// });

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
