<?php

$id = $_GET["id"];

require_once"conn.php";
$sql = "SELECT * FROM `produce` WHERE `id` = $id";
$result = $conn->query($sql);

// var_dump($result->fetch_assoc());
$res = $result->fetch_assoc()
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="go.php" method="GET">
        商品id：<?php echo $res['id'];?>
        <input hidden name="id" class="form-control" type="text" value="<?php echo $res['id'];?>">
        <input name="n" class="form-control" type="text" placeholder="商品名称" value="<?php echo $res['pname'];?>">
        <input name="p" class="form-control" type="text" placeholder="商品价格" value="<?php echo $res['price'];?>">
        <input name="num" class="form-control" type="text" placeholder="商品数量" value="<?php echo $res['pcount'];?>">
        <textarea name="r" id="" cols="30" rows="10" placeholder="商品简介"><?php echo $res['remark'];?></textarea>
        <input class="form-control" type="submit" value="更新商品信息">
    </form>
</body>
</html>