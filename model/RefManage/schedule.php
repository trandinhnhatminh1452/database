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
    <link rel="stylesheet" href="../view/schedule.css">
</head>
<body>
    <div>
        <div class="sche_filter">
            <label for="matchweek">Matchweek:</label> 
            <input id="matchweek" type="number" min="1" max="38" step="1" 
                   value="1">
        </div>
    
        <h1 class="Ref_sche">Referee Schedule</h1>
        
        <?php 
        $query = "SELECT 
    r.ref_id AS \"Referee ID\", 
    r.ref_name AS \"Name\", 
    rm.match_id AS \"Match ID\", 
    m.matchweek AS \"MatchWeek\",
    m.match_time AS \"Match Time\", 
    t.stadium_name AS \"Stadium\"
FROM _flms.referees r
JOIN _flms.ref_match rm ON r.ref_id = rm.ref_id
JOIN _flms.matches m ON rm.match_id = m.match_id
JOIN _flms.team_match tm ON m.match_id = tm.match_id
JOIN _flms.teams t ON tm.club_name = t.club_name
WHERE tm.home_away = 'home'";


        fetchTableData($query);
        ?>

        <div class="control">
            <?php
            get_btn("Add Referee");
            get_btn("Delete Referee");
            ?>
        </div> 
    </div>

    <!-- <div class="message add" >
        <div class="title">
            Add
        </div>
        <form action="database/RefManage/schedule/delete.php" method="post">
            <?php 
                // get_option("SELECT ref_id FROM _flms.referees
                //             ORDER BY ref_id ASC ");
                        

                // get_option("SELECT match_id FROM _flms.matches
                //             ORDER BY match_id ASC ");
                            
            ?> 
       <input type="text" id="textBox" placeholder="Nhập giá trị mới" style="display:none;">
        <div class="control">
            <input type="submit" class="controlBtn button" value="add">
            <div class="cancel button">cancel</div>
        </div>
        </form>
    </div> -->
    <?php
    get_form("database/RefManage/schedule/add.php","Add", ["Referee ID", "Match ID"],["text","text"],["ref_id","match_id"]);
    get_form("database/RefManage/schedule/delete.php","Delete", ["Referee ID", "Match ID"],["text","text"],["ref_id","match_id"]);
    ?>
<script>
    document.getElementById("selectBox").addEventListener("change", function() {
        let textBox = document.getElementById("textBox");
        if (this.value === "other") {
            textBox.style.display = "block";
            textBox.focus();
        } else {
            textBox.style.display = "none";
        }
    });
</script>
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
    return e.children[3].textContent.trim() == text;
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
    filter(1);
    document.addEventListener("click", e => {
        filter(document.querySelector(".sche_filter input").value);
    });
    document.addEventListener("keyup", e => {
        if(document.querySelector(".sche_filter input").value>38){
            document.querySelector(".sche_filter input").value = 38
        }
        filter(document.querySelector(".sche_filter input").value);
    });
    </script>

</body>
</html>
