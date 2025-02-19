<?php 
include "../control/database.php";
include "../control/tools.php";
session_start();

if (isset($_SESSION["username"])) {
    header("Location: index.php");
    exit();
} 

// Lưu thông báo vào biến PHP
$alertMessage = "";
if (isset($_GET['mess'])) {
    if ($_GET['mess'] == 'vldn') {
        $alertMessage = "Vui lòng nhập đầy đủ!";
    } elseif ($_GET['mess'] == 'smk') {
        $alertMessage = "Sai tài khoản hoặc mật khẩu!";
    }
}
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Football League </title>
    <link rel="icon" type="image/png" href="https://imgs.search.brave.com/IoJLS63hyl9kZYKk8ksMKtTJTRz2-XC5tOyGqZSpknU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4t/aWNvbnMtcG5nLmZy/ZWVwaWsuY29tLzI1/Ni8xNTI3LzE1Mjc0/MTUucG5nP3NlbXQ9/YWlzX2h5YnJpZA">
    <link rel="stylesheet" href="../view/login.css">
</head>
<body>
<video autoplay loop muted playsinline id="background-video">
        <source src="../video/background.mp4" type="video/mp4">
</video>
<form action="Login/check.php" method="GET">
    <h1>Login</h1>
    <input name="user" type="text" placeholder="User">
    <input name="pass" type="password" placeholder="Password">
    
    <input type="submit" value="Log in">
</form>

<!-- JavaScript hiển thị thông báo sau khi trang load xong -->
<script>
    window.onload = function() {
        let message = "<?php echo $alertMessage; ?>";
        if (message) {
            alert(message);
        }
    }
</script>

</body>
</html>
