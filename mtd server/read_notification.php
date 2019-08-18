<?php

require "init.php";

$customer_id = $_GET["user_name"];


$sql = "select * from notification__onces where notification__onces.customer_id='$customer_id'ORDER BY noti_date DESC";
$result = mysqli_query($con,$sql);

$sql1 = "select * from notification__groups";
$result1 = mysqli_query($con,$sql1);

if (mysqli_num_rows($result)>0){
    $response = array();


    while ($row = mysqli_fetch_assoc($result))
    {
        array_push($response,array("id"=>$row['id'],"customer_id"=>$row['customer_id'],"noti_one"=>$row['noti_one'],"title"=>$row['title'],"noti_date"=>$row['noti_date']));
        
    }

    echo json_encode($response);

}


mysqli_close($con);


