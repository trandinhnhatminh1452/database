<?php
include "../../../../database.php";
// Bước 1: Thêm cầu thủ vào bảng _flms.players và lấy ID
$id = add_DB("_flms.players", ["player_name", "position", "date_of_birth"], [
    $_POST["Name"],  
    $_POST["Position"], 
    $_POST["DOB"]
],"player_id");
// Kiểm tra xem thêm cầu thủ có thành công không
if ($id) {

    add_DB("_flms.player_team", ["player_id", "club_name", "begin", "\"end\"", "shirt_number"], [
        $id,
        $_POST["Club"],  
        $_POST["Begin_Date"],
        $_POST["End_Date"],
        $_POST["Shirt_No"]
    ],"player_id");
} else {
    echo "Lỗi khi thêm cầu thủ!";
}
header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Players");

?>