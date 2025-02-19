<?php 
    include "../control/database.php";

?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../view/table.css">
    <link rel="stylesheet" href="../view/leagueTable.css">

</head>
<body>
    <div>
    <?php 
    fetchTableData('SELECT position as "Position",
		club_name as "Club",
		played as "Played",
		won as "Won",
		drawn as "Drawn",
		lost as "Lost",
		goal_difference as "GD",
        point as "Point"

FROM _flms.team_table');
    ?>    
</div>
</body>
</html>