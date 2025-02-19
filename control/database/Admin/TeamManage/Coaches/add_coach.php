<?php
include "../../../../database.php";

$id = add_DB("_flms.coaches", ["coach_name", "nationality", "date_of_birth"], [
    $_POST["Name"],  
    $_POST["Nationality"], 
    $_POST["DOB"]
],"coach_id");
// Kiểm tra xem thêm cầu thủ có thành công không
if ($id) {
    add_DB("_flms.coach_team", ["coach_id", "club_name", "begin", "\"end\""], [
        $id,
        $_POST["Club"],  
        $_POST["Begin_Date"],
        $_POST["End_Date"]
    ],"coach_id");
} else {
    echo "Lỗi khi thêm cầu thủ!";
}
header("location: ../../../../index.php?page=admin&mod=TeamManage&option=Coaches");

?>