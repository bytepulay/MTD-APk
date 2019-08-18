<?php

require "init.php";

// $user_name = $_GET["user_name"];


$sql = "select * from notification__groups ORDER BY noti_date DESC";
$result = mysqli_query($con,$sql);

if (mysqli_num_rows($result)>0){
    $response = array();


    while ($row = mysqli_fetch_assoc($result))
    {
        array_push($response,array("id"=>$row['id'],"noti_group"=>$row['noti_group'],"group_title"=>$row['title'],"noti_group_date"=>$row['noti_date']));
        
    }

    echo json_encode($response);

}

mysqli_close($con);


