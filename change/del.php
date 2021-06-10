<?php
$id = $_GET['id'];

require_once "conn.php";

//执行sql
$sql = "DELETE FROM `produce` WHERE `produce`.`id` = $id";
$conn->query($sql);

//返回首页
header("Location:index.php");
?>