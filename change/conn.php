<?php
$conn = new mysqli("localhost","root","123456","test");

if($conn->connect_error){
    echo "连接失败";
}
// else{
//     echo "成功";
// }
?>
<html>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
</html>