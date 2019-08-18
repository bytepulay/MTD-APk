<?php
require "init.php";

$user_name = $_GET["user_name"];


$sql = "select * from customers where user_name='$user_name'";
$result = mysqli_query($con,$sql);


if (mysqli_num_rows($result)>0){
    $response = array();


    while ($row = mysqli_fetch_assoc($result))
    {
        array_push($response,array("customer_id"=>$row['customer_id'],"image_path"=>$row['path'],"profile"=>$row['profile']));
        
    }

    echo json_encode($response);

}

mysqli_close($con);

?>
