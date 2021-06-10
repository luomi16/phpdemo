<?php
$conn = new mysqli("localhost","root","123456","test");

if($conn->connect_error){
    echo "连接失败";
}
// else{
//     echo "成功";
// }

// 接口格式json  格式的输出和解析
header("content-type:application/json");
?>

