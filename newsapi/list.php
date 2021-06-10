<?php
require_once "conn.php";

// 新闻列表
$sql = "SELECT * FROM `list` ORDER BY `list`.`id` DESC";
$result = $conn->query($sql);

// 存储一个数组
$arr = [];
 
if ($result->num_rows > 0) {
    // 输出数据
    while($row = $result->fetch_assoc()) {
        // var_dump($row);
        // 标题
        $title = $row["title"];
        // var_dump($title);
        // 追加数组
        array_push($arr,$title);
    }
} else {
    echo "0 结果";
}

// 输出接口数据
// var_dump($arr);
echo json_encode($arr);
// 关闭连接数据库
$conn->close();
?>
