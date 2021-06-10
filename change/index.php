<?php
require_once "conn.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">商品名称</th>
      <th scope="col">商品价格</th>
      <th scope="col">商品数量</th>
      <th scope="col">商品备注</th>
      <th scope="col">操作</th>
    </tr>
  </thead>
  <tbody>
  <?php
  $sql = "SELECT * FROM `produce`";
  $result = $conn->query($sql);
//   var_dump($result);//输出结果
//   var_dump($result->fetch_assoc());//输出单条结果

    while($row = $result->fetch_assoc()){
        // var_dump($row);
    ?>

    <tr>
      <th scope="row"><?php echo $row['pname'];?></th>
      <td><?php echo $row['price'];?></td>
      <td><?php echo $row['pcount'];?></td>
      <td><?php echo $row['remark'];?></td>
      <td>
        <a href="edit.php?id=<?php echo $row['id'];?>">编辑</a>
        |
        <a href="del.php?id=<?php echo $row['id'];?>">删除</a>
      </td>
    </tr>
    <?php
    }
    ?>
  </tbody>
</table>
<div class="text-center">
    <a href="add.html" type="button" class="btn btn-outline-primary">添加新商品</a>
</div>
</body>
</html>