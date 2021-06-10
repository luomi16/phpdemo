<?php

$id = $_GET["id"];
// 名称
$n = $_GET["n"];
// 价格
$p = $_GET["p"];
// 数量
$num = $_GET["num"];
// 简介
$r = $_GET["r"];
require_once "conn.php";

// 更新语句
$sql = "UPDATE `produce` SET `pname` = '$n', `price` = '$p', `remark` = '$r' WHERE `produce`.`id` = $id;";

$conn->query($sql);
header("Location:index.php");
?>