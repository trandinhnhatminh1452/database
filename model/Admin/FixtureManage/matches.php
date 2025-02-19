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
    <link rel="stylesheet" href="../view/Admin/FixtureManage/matches.css">
</head>

<body>
    <div>
        <div class="filter">
        <label for="matchweek">Matchweek:</label> 
            <input id="matchweek" type="number" min="1" max="38" step="1" 
                   value="1">
            
            <label for="match_id">Match ID:</label> 
            <?php
                get_option("SELECT match_id FROM _flms.matches
                            ORDER BY match_id ASC ");
            ?>
                <label for="event">Event:</label> 
            <?php
                get_option("SELECT DISTINCT event 
                            FROM _flms.player_match 
                            ORDER BY event ASC;");
            ?>
            
        </div>

        <div class="score"></div>
        
        <?php 
        $query = "SELECT 
                    m.matchweek,
                    pm.match_id,
                    pm.player_id as \"ID\",
                    pm.club_name as \"Club\",
                    p.player_name as \"Name\",
                    pt.shirt_number as \"Shirt No\",
                    pm.event as \"Event\",
                    pm.event_time as \"Event Time\",
                    pm.event_half as \"Event Half\"
                    FROM _flms.player_match pm
                    JOIN _flms.players p ON pm.player_id = p.player_id
                    JOIN _flms.matches m ON pm.match_id = m.match_id
                    JOIN _flms.player_team pt ON pm.player_id = pt.player_id AND pm.club_name = pt.club_name
                    Order by event_half, event_time ;
                ";


        fetchTableData($query);
        ?>

        <div class="control">
            <?php
            get_btn("Add Event");
            get_btn("Delete Event");
            ?>
        </div> 
    </div>

    <?php
    get_form("database/Admin/FixtureManage/Matches/add_event.php","Add", ["Player ID","Club", "Event","Event Half","Event Time",'Match ID'],["number","text","text","number","number",'text'],["Player_ID","Club_name","Event","Event_half","Event_time",'MatchID']);
    get_form("database/Admin/FixtureManage/Matches/delete_event.php","Delete", ["Player ID","Club", "Event","Event Half","Event Time",'Match ID'],["number","text","text","number","number",'text'],["Player_ID","Club_name","Event","Event_half","Event_time",'MatchID']);
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

let select = document.querySelector(".filter select:nth-of-type(1)");
select.innerHTML = '<option>--Choose Match ID--</option>' + select.innerHTML;

let selectEvent = document.querySelector(".filter select:nth-of-type(2)"); 
selectEvent.innerHTML = '<option>--Choose Event--</option>' + selectEvent.innerHTML;

function check_content(e, text1, text2, text3) {
    if(text2.trim() == "--Choose Match ID--" && text3.trim() == "--Choose Event--"){
        return e.children[0].textContent.trim() == text1;
    }else if(text2.trim() == "--Choose Match ID--"){
        return (e.children[0].textContent.trim() == text1) && (e.children[6].textContent.trim() == text3);
    }else if(text3.trim() == "--Choose Event--"){
        return (e.children[0].textContent.trim() == text1) && (e.children[1].textContent.trim() == text2);
    } 
    return (e.children[0].textContent.trim() == text1) && (e.children[1].textContent.trim() == text2) && (e.children[6].textContent.trim() == text3) ;
}

function filter(text1, text2, text3) {
        arr_row.forEach((value, index) => {
            if (index === 0) return; // Bỏ qua hàng tiêu đề

            if (!check_content(value, text1, text2, text3)) {
                hidden(value);
            } else {
                show(value);
            }
        });
    }

    function matchid_filter(){
    Array.from(document.querySelector(".filter select:nth-of-type(1)").children).forEach((value, index) => {
            if (index === 0) return; // Bỏ qua option đầu tiên
            hidden(value); // Ẩn các option khác
        });

        arr_row.forEach((value, index) => {
            if (index === 0) return; // Bỏ qua option đầu tiên
            if(value.children[0].textContent.trim() == document.querySelector(".filter input").value){
                show(document.querySelector(".filter select:nth-of-type(1) ."+value.children[1].textContent.trim()));
            }
        });
}

    //Dat mac dinh cho select
    document.querySelector(".filter input").addEventListener("click", e => {
        document.querySelector(".filter select:nth-of-type(1)").value = document.querySelector(".filter select:nth-of-type(1)").children[0].textContent;
        document.querySelector(".filter select:nth-of-type(2)").value = document.querySelector(".filter select:nth-of-type(2)").children[0].textContent; 
    });
    
        document.addEventListener("click", e => {
        filter(
            document.querySelector(".filter input").value,
            document.querySelector(".filter select:nth-of-type(1)").value,
            document.querySelector(".filter select:nth-of-type(2)").value
        );
        matchid_filter();
    });

    
    document.querySelector(".filter select:nth-of-type(1)").addEventListener("click",e=>{
        if(document.querySelector(".filter select:nth-of-type(1)").value!=='--Choose Match ID--'){
           setScore();
        }
        else {
            hidden(document.querySelector(".score"))
        }
    })
    function setScore() {
    var arr_score = [];
    var arr_club = [];
    arr_row.forEach((value, index) => {
        if (index === 0) return; // Bỏ qua option đầu tiên
        if (value.children[1].textContent == document.querySelector(".filter select:nth-of-type(1)").value) {
            if (value.children[6].textContent.trim() == 'goal') {
                arr_score.push(value.children[3].textContent);
            }
            arr_club.push(value.children[3].textContent);
        }
    });

    arr_club = [...new Set(arr_club)];
    let count1 = arr_score.filter(val => val === arr_club[0]).length;
    let count2 = arr_score.filter(val => val === arr_club[1]).length;

    document.querySelector(".score").textContent = `${arr_club[0]} ${count1}-${count2} ${arr_club[1]}`;

    // Hiển thị score trên giao diện
    document.querySelector(".score").style.display = 'block';
}
   
    </script>

</body>
</html>
