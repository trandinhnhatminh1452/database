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
      JOIN _flms.team_match tm ON m.match_id = tm.match_id;";
;


    


        fetchTableData($query);
        ?>

        <div class="control">
            <?php
            get_btn("Add Squad");
            get_btn("Delete Squad");
            
            ?>
        </div> 
    </div>

    <?php
    get_form("database/Admin/FixtureManage/Squad/add_squad.php","Add", ["MatchWeek", "Match ID","Club 1","H/A","Club 2","Time","Ticket"],["number","text","text","text","text","datetime-local","number"],["MatchWeek", "Match_ID","Club_1","H_A","Club_2","Time","Ticket"]);
    get_form("database/Admin/FixtureManage/Squad/delete_squad.php","Delete", ["Match ID"],["text"],["Match_ID"]);
    
    ?>

    <script>
    document.querySelector(".Add.button").addEventListener("click", e => {
        document.querySelector(".message.delete").style.display = 'none'; 
        document.querySelector(".message.add").style.display = 'block';   
    });

    document.querySelector(".Delete.button").addEventListener("click", e => {
        document.querySelector(".message.add").style.display = 'none';    
        document.querySelector(".message.delete").style.display = 'block'; 
    });

    document.querySelector(".message.add .cancel.button").addEventListener("click", e => {
        document.querySelector(".message.add").style.display = 'none';
    });

    document.querySelector(".message.delete .cancel.button").addEventListener("click", e => {
        document.querySelector(".message.delete").style.display = 'none';
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
