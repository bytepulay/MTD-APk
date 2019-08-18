<?php

require "init.php";

$user_name = $_GET["user_name"];
//$user_password =$_GET["user_password"];

$sql = "select * from customers where user_name = '$user_name'";

$result = mysqli_query($con,$sql);

if (!mysqli_num_rows($result)>0){
    $status = "failed";

    echo json_encode(array("response"=>$status));
}else{
    $row = mysqli_fetch_assoc($result);

    $name = $row['name'];
    $u_name=$row['user_name'];
    $id = $row['customer_id'];
    $Shop_name = $row['shop_name'];
    $Phone_number = $row['phone_number'];
    $Address = $row['address'];
    $Dob = $row['dob'];
    $Nrc = $row['nrc'];
    $Town_ship = $row['town'];
    $path = $row['path'];
    $profile = $row['profile'];
    $debitKyat = $row['debit_kyat'];
    $debitPal = $row['debit_pal'];
    $debityae = $row['debit_yae'];
    $update_voucher=$row['voucher_number'];
    $update_saleDate = $row['sale_date'];
    $updat_sale_name = $row['sale_name'];
    $status = "ok";

    echo json_encode(array("response"=>$status,"id"=>$id,"name"=>$name,"user_name"=>$u_name,"shop_name"=>$Shop_name,"phone_number"=>$Phone_number,"address"=>$Address,"dob"=>$Dob,"nrc"=>$Nrc,"town_ship"=>$Town_ship,"path"=>$path,"profile"=>$profile,"debit_kyat"=>$debitKyat,"debit_pal"=>$debitPal,"debit_yae"=>$debityae,"update_voucher"=>$update_voucher,"update_saleDate"=>$update_saleDate,"update_sale_name"=>$updat_sale_name));
}
mysqli_close($con);


