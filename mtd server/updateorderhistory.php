<?php

require "init.php";

$id = $_GET["id"];

//$sale_user_name = $_GET['sale_user_name'];
$voucherNumber  = $_GET["voucher_number"];
$saleDate  = $_GET["sdate"];
$qualtity = $_GET["qty"];
$pointEight = $_GET["point_eight"];
$kyat = $_GET["kyat"];
$pal = $_GET["pal"];
$yae = $_GET["yae"];
$gram = $_GET["gram"];

$cuponCode =$_GET["cupon_code"];
$customerId = $_GET["customer_id"];

$ringTitle = $_GET["ring_title"];
$ringNumber = $_GET["ring_number"];
$ringPointEight =$_GET["ring_point_eight"];
$ringKyat = $_GET["ring_kyat"];
$ringPal = $_GET["ring_pal"];
$ringYae = $_GET["ring_yae"] ;



$banglesTitle = $_GET["bangles_title"];
$banglesNumber = $_GET["bangles_number"];
$banglesPointEight =$_GET["bangles_point_eight"];
$banglesKyat = $_GET["bangles_kyat"];
$banglesPal = $_GET["bangles_pal"];
$banglesYae = $_GET["bangles_yae"];



$necklaceTitle = $_GET["necklace_title"];
$necklaceNumber = $_GET["necklace_number"];
$necklacePointEight =$_GET["necklace_point_eight"];
$necklaceKyat = $_GET["necklace_kyat"];
$necklacePal = $_GET["necklace_pal"];
$necklaceYae = $_GET["necklace_yae"] ;


$earringTitle = $_GET["earring_title"];
$earringNumber = $_GET["earring_number"];
$earringPointEight =$_GET["earring_point_eight"];
$earringKyat = $_GET["earring_kyat"];
$earringPal = $_GET["earring_pal"];
$earringYae = $_GET["earring_yae"] ;


//for update customer tables
$name = $_GET['name'];
//$user_name =$_GET["user_name"];
$shop_name =$_GET["shop_name"];
$phone_number =$_GET["phone_number"];
$address = $_GET["address"];
$dob =$_GET["dob"];
$nrc = $_GET["nrc"];
$town_ship =$_GET["town_ship"];


$sql1 = "select * from orders_invoice where id = '$id'";
$result1 = mysqli_query($con,$sql1);


if (mysqli_num_rows($result1)>0) {
    // $status = "ok";
    $response = array();

    $row = mysqli_fetch_assoc($result1);
  $customer_id = $row['customer_id'];


   $sqlSaleUpdate = "UPDATE `order_invoices` SET `voucher_number`='$voucherNumber',`order_date`='$saleDate',`qty`='$qualtity',`point_eight`='$pointEight',`kyat`='$kyat',`pal`='$pal',`yae`='$yae',`gram`='$gram',`cupon_code`='$cuponCode',`customer_id`=$customer_id,`ring`='$ringTitle',`ring_number`='$ringNumber',`ring_point_eight`='$ringPointEight',`ring_kyat`=$ringKyat'',`ring_pal`='$ringPal',`ring_yae`='$ringYae',`bangles`='$banglesTitle',`bangles_number`='$banglesNumber',`bangles_point_eight`='$banglesPointEight',`bangles_kyat`='$banglesKyat',`bangles_pal`='$banglesPal',`bangles_yae`='$banglesYae',`necklace`='$necklaceTitle',`necklace_number`='$necklaceNumber',`necklace_point_eight`='$necklacePointEight',`necklace_kyat`='$necklaceKyat',`necklace_pal`='$necklacePal',`necklace_yae`='$necklaceYae',`earring`='$earringTitle',`earring_number`='$earringNumber',`earring_point_eight`='$earringPointEight',`earring_kyat`='$earringKyat',`earring_pal`='$earringPal',`earring_yae`='$earringYae' WHERE id='$id'";
    $result = mysqli_query($con, $sqlSaleUpdate);

    


    $sqlUpdateCustomer  = "UPDATE `customers` SET `name`='$name', `shop_name`='$shop_name',`phone_number`='$phone_number',`address`='$address',`dob`='$dob',`nrc`='$nrc',`town`='$town_ship' WHERE customer_id='$customer_id'";
    
    
   $result1 = mysqli_query($con,  $sqlUpdateCustomer);  


if($result && $result1){
        echo json_encode(array('response'=>"ok"));
    }else if($result && $result1){
         echo("Sale update error: " . mysqli_error($con));
    }



    $sql = "select * from customers where id = '$customer_id'";
        $result = mysqli_query($con, $sql);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            echo $row['name'];

        }
    }
    mysqli_close($con);


