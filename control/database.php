<?php
// Hàm lấy dữ liệu và hiển thị dưới dạng bảng HTML
function fetchTableData($sql) {
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    try {
        // Kết nối PostgreSQL
        $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Thực thi truy vấn
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Kiểm tra nếu không có dữ liệu
        if (empty($result)) {
            echo "Không có dữ liệu trong bảng.";
            return;
        }

        // Hiển thị dữ liệu dưới dạng bảng HTML
        echo "<div><table class='tableView' cellspacing='0' cellpadding='10'>";

        // Hiển thị tiêu đề cột
        echo "<tr>";
        foreach (array_keys($result[0]) as $columnName) {
            echo "<th style='background-color:black;color:white;'>$columnName</th>";
        }
        echo "</tr>";

        // Hiển thị từng dòng dữ liệu
        foreach ($result as $row) {
            echo "<tr>";
            foreach ($row as $value) {
                echo "<td>$value</td>";
            }
            echo "</tr>";
        }

        echo "</table></div>";
    } catch (PDOException $e) {
        echo "Lỗi: " . $e->getMessage();
    }
}

// Hàm lấy dữ liệu và hiển thị dưới dạng input text
function fetchMessageData($sql) {
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    try {
        // Kết nối PostgreSQL
        $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Thực thi truy vấn
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Kiểm tra nếu không có dữ liệu
        if (empty($result)) {
            echo "Không có dữ liệu trong bảng.";
            return;
        }

        // Hiển thị dữ liệu dưới dạng input text
        foreach (array_keys($result[0]) as $columnName) {
            echo "<input type='text' placeholder='$columnName'>";
        }
    } catch (PDOException $e) {
        echo "Lỗi: " . $e->getMessage();
    }
}

// Hàm thực thi câu lệnh SQL (INSERT, UPDATE, DELETE)
function executeSQL($sql) {
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    try {
        // Kết nối PostgreSQL
        $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // Bật chế độ báo lỗi
        ]);

        // Thực thi câu lệnh SQL
        $pdo->exec($sql);

        echo "Thực thi SQL thành công!";
    } catch (PDOException $e) {
        die("Lỗi SQL: " . $e->getMessage());
    }
}

function get_option($sql){
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    try {
        // Kết nối PostgreSQL
        $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Thực thi truy vấn
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Kiểm tra nếu không có dữ liệu
        if (empty($result)) {
            echo "Không có dữ liệu trong bảng.";
            return;
        }

        echo "<select id='selectBox'>";

        foreach ($result as $row) {
            foreach ($row as $value) {
                echo "<option class='$value'>$value</option>";
            }
        }

        echo "</select>";
    } catch (PDOException $e) {
        echo "Lỗi: " . $e->getMessage();
    }
}

function add_DB($table_name, $arr_col_name, $arr_col_db, $key = null) {
    // Thông tin kết nối đến cơ sở dữ liệu
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    // Kết nối đến cơ sở dữ liệu PostgreSQL bằng PDO
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;";
    try {
        $pdo = new PDO($dsn, $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    } catch (PDOException $e) {
        die("Kết nối thất bại: " . $e->getMessage());
    }

    // Chuẩn bị câu lệnh SQL với placeholder (?)
    $columns = implode(", ", $arr_col_name);
    $placeholders = implode(", ", array_fill(0, count($arr_col_db), "?"));

    // Kiểm tra nếu có `$key` thì thêm RETURNING
    $returning = (!empty($key)) ? "RETURNING $key" : "";

    $sql = "INSERT INTO $table_name ($columns) VALUES ($placeholders) $returning";
    echo $sql;
    print_r($arr_col_db);
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->execute($arr_col_db);

        // Nếu có RETURNING, lấy ID của bản ghi vừa thêm
        if ($returning) {
            return $stmt->fetch()[$key] ?? null;
        }
        return true; // Thêm thành công nhưng không cần lấy ID
    } catch (PDOException $e) {
        echo "Lỗi khi thêm dữ liệu: " . $e->getMessage();
        return false;
    }
}


function delete_DB($table_name, $arr_col_name, $arr_col_db) {
    // Thiết lập thông tin kết nối đến cơ sở dữ liệu
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    // Kết nối đến cơ sở dữ liệu PostgreSQL
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;";
    try {
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Kết nối thất bại: " . $e->getMessage();
        return;
    }

    // Chuẩn bị câu lệnh SQL để xóa dữ liệu
    $conditions = [];
    foreach ($arr_col_name as $index => $col_name) {
        $conditions[] = "$col_name = ?";
    }
    $condition_str = implode(" AND ", $conditions);
    
    $sql = "DELETE FROM $table_name WHERE $condition_str";
    echo $sql;
    print_r($arr_col_db);
    try {
        // Thực thi câu lệnh SQL
        $stmt = $pdo->prepare($sql);
        $stmt->execute($arr_col_db);
        echo "Dữ liệu đã được xóa thành công!";
    } catch (PDOException $e) {
        echo "Lỗi khi xóa dữ liệu: " . $e->getMessage();
    }
}
function update_DB($table_name, $arr_col_name, $arr_col_db, $arr_condition_col, $arr_condition_db) {
    // Thiết lập thông tin kết nối đến cơ sở dữ liệu
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    // Kết nối đến cơ sở dữ liệu PostgreSQL
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;";
    try {
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Kết nối thất bại: " . $e->getMessage();
        return;
    }

    // Chuẩn bị câu lệnh SQL để cập nhật dữ liệu
    $set_columns = [];
    $update_values = [];
    
    foreach ($arr_col_name as $index => $col_name) {
        $set_columns[] = "$col_name = ?";
        $update_values[] = $arr_col_db[$index];
    }
    
    // Tạo mảng điều kiện cho việc cập nhật
    $condition = [];
    foreach ($arr_condition_col as $index => $col_condition) {
        $condition[] = "$col_condition = ?";
        $update_values[] = $arr_condition_db[$index];
    }
    
    $set_str = implode(", ", $set_columns);
    $condition_str = implode(" AND ", $condition);
    
    // Câu lệnh SQL update
    $sql = "UPDATE $table_name SET $set_str WHERE $condition_str";
    
    try {
        // Thực thi câu lệnh SQL
        $stmt = $pdo->prepare($sql);
        $stmt->execute($update_values);
        echo "Dữ liệu đã được cập nhật thành công!";
    } catch (PDOException $e) {
        echo "Lỗi khi cập nhật dữ liệu: " . $e->getMessage();
    }
}

function fetchValueFromDB($table_name, $column_name, $condition_columns, $condition_values) {
    // Thiết lập thông tin kết nối đến cơ sở dữ liệu
    $host = "aws-0-ap-southeast-1.pooler.supabase.com";
    $dbname = "postgres";
    $username = "postgres.yofwzikdzwrasfhmhqrh";
    $password = "flmsgroup8abc";
    $port = "6543";

    // Kết nối đến cơ sở dữ liệu PostgreSQL bằng PDO
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;";
    try {
        $pdo = new PDO($dsn, $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    } catch (PDOException $e) {
        die("Kết nối thất bại: " . $e->getMessage());
    }

    // Tạo điều kiện WHERE từ mảng cột
    $conditions = [];
    foreach ($condition_columns as $col) {
        $conditions[] = "$col = ?";
    }
    $condition_str = implode(" AND ", $conditions);

    // Câu lệnh SQL
    $sql = "SELECT $column_name FROM $table_name WHERE $condition_str LIMIT 1";

    try {
        $stmt = $pdo->prepare($sql);
        $stmt->execute($condition_values);
        return $stmt->fetchColumn(); // Lấy giá trị cột cần lấy
    } catch (PDOException $e) {
        echo "Lỗi khi truy vấn dữ liệu: " . $e->getMessage();
        return null;
    }
}

?>




