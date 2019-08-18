<?php

require "init.php";



 $saleUserName  = $_GET["sale_user_name"];

 $voucherNumber  = $_GET["voucher_number"];

 $saleDate  = $_GET["sdate"];
 $total_kyat = $_GET["total_kyat"];
 $total_pal = $_GET["total_pal"];
 $total_yae = $_GET["total_yae"];
 $qualtity = $_GET["qty"];
 $pointEight = $_GET["point_eight"];
$totalAyotkyat =$_GET["total_ayot_kyat"];
$totalAyotPal =$_GET["total_ayot_pal"];
$totalAyotYae =$_GET["total_ayot_yae"];
 $kyat = $_GET["kyat"];
 $pal = $_GET["pal"];
 $yae = $_GET["yae"];
 $gram = $_GET["gram"];
 $cuponCode =$_GET["cupon_code"];
 $customerId = $_GET["customer_id"];

    $previousRemainKyat = $_GET["previous_remain_kyat"];
    $previousRemainPal = $_GET["previous_remain_pal"];
    $previousRemainYae =$_GET["previous_remain_yae"];
    $buyDebitKyat = $_GET["buy_debit_kyat"];
    $buyDebitPal = $_GET["buy_debit_pal"];
    $buyDebitYae = $_GET["buy_debit_yae"] ;
 
 
 $paymentKyat = $_GET["payment_kyat"];
 $paymentPal = $_GET["payment_pal"];
 $paymentYae =$_GET["payment_yae"];
 $nowRemainKyat = $_GET["now_remain_kyat"];
 $nowRemainPal = $_GET["now_remain_pal"];
 $nowRemainYae = $_GET["now_remain_yae"];
 $note = $_GET["note"];

    
    
    $sql ="INSERT INTO `sale_invoices`(`sale_user_name`, `voucher_number`, `sale_date`, `total_kyat`, `total_pal`, `total_yae`, `qty`, `point_eight`, `total_ayot_kyat`, `total_ayot_pal`, `total_ayot_yae`, `kyat`, `pal`, `yae`, `gram`, `cupon_code`, `customer_id`, `previous_remain_kyat`, `previous_remain_pal`, `previous_remain_yae`, `buy_debit_kyat`, `buy_debit_pal`, `buy_debit_yae`, `payment_kyat`, `payment_pal`, `payment_yae`, `now_remain_kyat`, `now_remain_pal`, `now_remain_yae`,`note`) VALUES ('$saleUserName','$voucherNumber','$saleDate','$total_kyat','$total_pal','$total_yae','$qualtity','$pointEight','$totalAyotkyat','$totalAyotPal','$totalAyotYae','$kyat','$pal','$yae','$gram','$cuponCode','$customerId','$previousRemainKyat','$previousRemainPal','$previousRemainYae','$buyDebitKyat','$buyDebitPal','$buyDebitYae','$paymentKyat','$paymentPal','$paymentYae','$nowRemainKyat','$nowRemainPal','$nowRemainYae','$note')";

    $sqlUpdate = "UPDATE `customers` SET `debit_kyat`=$nowRemainKyat,`debit_pal`=$nowRemainPal,`debit_yae`=$nowRemainYae,`voucher_number`= $voucherNumber,`sale_date`= $saleDate,`sale_name`=$saleUserName WHERE customer_id='$customerId'";
    mysqli_query($con,$sqlUpdate);
    if (mysqli_query($con,$sql)){
        $status = "ok";
    }else{
        $status ="error";
        
        echo mysqli_error($con);
    }

echo json_encode(array("response"=>$status));
mysqli_close($con);