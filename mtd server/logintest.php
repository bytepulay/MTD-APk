<?php

require "init.php";

$user_name = $_GET["user_name"];


$sql = "select * from customers where user_name = '$user_name'";

$result = mysqli_query($con,$sql);
$sql1 = "select * from sales where user_name = '$user_name'";
$result1 = mysqli_query($con,$sql1);



if (mysqli_num_rows($result)>0){
    $status = "customer";
     $row = mysqli_fetch_assoc($result);

    $name = $row['name'];
    $u_name=$row['user_name'];
    $password = $row['password'];
   

    echo json_encode(array("response"=>$status,"name"=>$name,"user_name"=>$u_name,"password"=>$password));
}else if (mysqli_num_rows($result1)>0){
    $status = "sale";
    $row = mysqli_fetch_assoc($result1);

    $name = $row['name'];
    $u_name=$row['user_name'];
   

    echo json_encode(array("response"=>$status,"name"=>$name,"user_name"=>$u_name));

    }else{
    $status = "new";
    echo json_encode(array("response"=>$status));
}

//} else if( (!mysqli_num_rows($result)>0) && (!mysqli_num_rows($result1))){
//
//    $status = "new";
//    echo json_encode(array("response"=>$status));
////    $row = mysqli_fetch_assoc($result1);
////
////    $name = $row['name'];
////    $u_name=$row['user_name'];
////    $status = "ok";
////
////    echo json_encode(array("response"=>$status,"name"=>$name,"user_name"=>$u_name));
//}
mysqli_close($con);


