<?php
// 名称
$n = $_GET["n"];
// 价格
$p = $_GET["p"];
// 数量
$num = $_GET["num"];
// 简介
$r = $_GET["r"];

// 连接数据库
require_once "conn.php";

// 添加的sql语句

$sql="INSERT INTO `produce` (`id`, `pname`, `price`, `pcount`, `remark`) VALUES (NULL, '$n', '$p', '$num', '$r');";

// 执行sql语句
$conn->query($sql);

header("location:index.php");

?>